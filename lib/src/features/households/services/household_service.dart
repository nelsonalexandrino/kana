import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/household_model.dart';
import '../models/member_model.dart';

class HouseholdService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  HouseholdService({
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? FirebaseAuth.instance;

  /// Create a new household
  Future<HouseholdModel> createHousehold({
    required String name,
    String currency = 'USD',
    double monthlyBudget = 0.0,
  }) async {
    final user = _auth.currentUser;
    if (user == null) throw Exception('User not authenticated');

    final householdRef = _firestore.collection('households').doc();
    final household = HouseholdModel(
      id: householdRef.id,
      name: name,
      currency: currency,
      createdBy: user.uid,
      createdAt: DateTime.now(),
      monthlyBudget: monthlyBudget,
    );

    await householdRef.set(household.toJson());

    // Add creator as admin member
    await addMember(
      householdId: household.id,
      userId: user.uid,
      displayName: user.displayName ?? 'User',
      email: user.email,
      photoURL: user.photoURL,
      role: HouseholdRole.admin,
    );

    // Update user's household list
    await _firestore.collection('users').doc(user.uid).set({
      'households': FieldValue.arrayUnion([household.id]),
      'defaultHouseholdId': household.id,
    }, SetOptions(merge: true));

    return household;
  }

  /// Get a household by ID
  Future<HouseholdModel?> getHousehold(String householdId) async {
    final doc = await _firestore.collection('households').doc(householdId).get();
    if (!doc.exists) return null;

    return HouseholdModel.fromJson({
      ...doc.data()!,
      'id': doc.id,
    });
  }

  /// Stream household data
  Stream<HouseholdModel?> watchHousehold(String householdId) {
    return _firestore
        .collection('households')
        .doc(householdId)
        .snapshots()
        .map((doc) {
      if (!doc.exists) return null;
      return HouseholdModel.fromJson({
        ...doc.data()!,
        'id': doc.id,
      });
    });
  }

  /// Get all households for current user
  Stream<List<HouseholdModel>> watchUserHouseholds() {
    final user = _auth.currentUser;
    if (user == null) return Stream.value([]);

    return _firestore
        .collection('households')
        .where('members', arrayContains: user.uid)
        .snapshots()
        .asyncMap((snapshot) async {
      final households = <HouseholdModel>[];
      for (final doc in snapshot.docs) {
        households.add(HouseholdModel.fromJson({
          ...doc.data(),
          'id': doc.id,
        }));
      }
      return households;
    });
  }

  /// Add a member to household
  Future<void> addMember({
    required String householdId,
    required String userId,
    required String displayName,
    String? email,
    String? photoURL,
    HouseholdRole role = HouseholdRole.editor,
  }) async {
    final member = MemberModel(
      userId: userId,
      householdId: householdId,
      displayName: displayName,
      email: email,
      photoURL: photoURL,
      role: role,
      status: MemberStatus.active,
      joinedAt: DateTime.now(),
      permissions: role.defaultPermissions,
    );

    await _firestore
        .collection('households')
        .doc(householdId)
        .collection('members')
        .doc(userId)
        .set(member.toJson());
  }

  /// Get household members
  Stream<List<MemberModel>> watchHouseholdMembers(String householdId) {
    return _firestore
        .collection('households')
        .doc(householdId)
        .collection('members')
        .where('status', isEqualTo: MemberStatus.active.name)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => MemberModel.fromJson({
                  ...doc.data(),
                  'userId': doc.id,
                }))
            .toList());
  }

  /// Update household
  Future<void> updateHousehold(
    String householdId,
    Map<String, dynamic> updates,
  ) async {
    await _firestore.collection('households').doc(householdId).update(updates);
  }

  /// Delete household
  Future<void> deleteHousehold(String householdId) async {
    // Delete all subcollections (members, expenses, categories, projects)
    final batch = _firestore.batch();

    // Delete members
    final members = await _firestore
        .collection('households')
        .doc(householdId)
        .collection('members')
        .get();
    for (final doc in members.docs) {
      batch.delete(doc.reference);
    }

    // Delete household
    batch.delete(_firestore.collection('households').doc(householdId));

    await batch.commit();
  }

  /// Update member role
  Future<void> updateMemberRole(
    String householdId,
    String userId,
    HouseholdRole newRole,
  ) async {
    await _firestore
        .collection('households')
        .doc(householdId)
        .collection('members')
        .doc(userId)
        .update({
      'role': newRole.name,
      'permissions': newRole.defaultPermissions.toJson(),
    });
  }

  /// Remove member from household
  Future<void> removeMember(String householdId, String userId) async {
    await _firestore
        .collection('households')
        .doc(householdId)
        .collection('members')
        .doc(userId)
        .update({'status': MemberStatus.inactive.name});
  }
}

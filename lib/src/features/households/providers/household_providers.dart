import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/household_model.dart';
import '../models/member_model.dart';
import '../services/household_service.dart';

part 'household_providers.g.dart';

// Service provider
@riverpod
HouseholdService householdService(HouseholdServiceRef ref) {
  return HouseholdService(
    firestore: FirebaseFirestore.instance,
    auth: FirebaseAuth.instance,
  );
}

// Current user ID provider
@riverpod
String? currentUserId(CurrentUserIdRef ref) {
  return FirebaseAuth.instance.currentUser?.uid;
}

// Stream of user's households
@riverpod
Stream<List<HouseholdModel>> userHouseholds(UserHouseholdsRef ref) {
  final service = ref.watch(householdServiceProvider);
  return service.watchUserHouseholds();
}

// Selected household ID provider (state)
@riverpod
class SelectedHouseholdId extends _$SelectedHouseholdId {
  @override
  String? build() {
    // Try to load from SharedPreferences or default to null
    return null;
  }

  void select(String? householdId) {
    state = householdId;
    // Save to SharedPreferences for persistence
  }
}

// Stream of selected household
@riverpod
Stream<HouseholdModel?> selectedHousehold(SelectedHouseholdRef ref) {
  final householdId = ref.watch(selectedHouseholdIdProvider);
  if (householdId == null) return Stream.value(null);

  final service = ref.watch(householdServiceProvider);
  return service.watchHousehold(householdId);
}

// Stream of household members
@riverpod
Stream<List<MemberModel>> householdMembers(
  HouseholdMembersRef ref,
  String householdId,
) {
  final service = ref.watch(householdServiceProvider);
  return service.watchHouseholdMembers(householdId);
}

// Current user's member data in selected household
// Note: Use in UI with AsyncValue to handle loading/error states
@riverpod
Stream<MemberModel?> currentUserMember(CurrentUserMemberRef ref) {
  final householdId = ref.watch(selectedHouseholdIdProvider);
  final userId = ref.watch(currentUserIdProvider);

  if (householdId == null || userId == null) {
    return Stream.value(null);
  }

  final service = ref.watch(householdServiceProvider);
  return service.watchHouseholdMembers(householdId).map(
        (members) => members.where((m) => m.userId == userId).firstOrNull,
      );
}

// Current user's permissions - derived from member data
// Use this in UI to check permissions before showing actions
extension CurrentUserPermissionsX on AsyncValue<MemberModel?> {
  MemberPermissions? get permissions {
    return when(
      data: (member) => member?.permissions,
      loading: () => null,
      error: (_, __) => null,
    );
  }
}

// Controller for household operations
@riverpod
class HouseholdController extends _$HouseholdController {
  @override
  FutureOr<void> build() {}

  Future<HouseholdModel> createHousehold({
    required String name,
    String currency = 'USD',
    double monthlyBudget = 0.0,
  }) async {
    state = const AsyncLoading();

    try {
      final service = ref.read(householdServiceProvider);
      final household = await service.createHousehold(
        name: name,
        currency: currency,
        monthlyBudget: monthlyBudget,
      );

      // Automatically select the new household
      ref.read(selectedHouseholdIdProvider.notifier).select(household.id);

      state = const AsyncData(null);
      return household;
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> updateHousehold(
    String householdId,
    Map<String, dynamic> updates,
  ) async {
    state = const AsyncLoading();

    try {
      final service = ref.read(householdServiceProvider);
      await service.updateHousehold(householdId, updates);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> addMember({
    required String householdId,
    required String userId,
    required String displayName,
    String? email,
    String? photoURL,
    HouseholdRole role = HouseholdRole.editor,
  }) async {
    state = const AsyncLoading();

    try {
      final service = ref.read(householdServiceProvider);
      await service.addMember(
        householdId: householdId,
        userId: userId,
        displayName: displayName,
        email: email,
        photoURL: photoURL,
        role: role,
      );
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> updateMemberRole(
    String householdId,
    String userId,
    HouseholdRole newRole,
  ) async {
    state = const AsyncLoading();

    try {
      final service = ref.read(householdServiceProvider);
      await service.updateMemberRole(householdId, userId, newRole);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> removeMember(String householdId, String userId) async {
    state = const AsyncLoading();

    try {
      final service = ref.read(householdServiceProvider);
      await service.removeMember(householdId, userId);
      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> deleteHousehold(String householdId) async {
    state = const AsyncLoading();

    try {
      final service = ref.read(householdServiceProvider);
      await service.deleteHousehold(householdId);

      // Clear selection if deleting current household
      final selectedId = ref.read(selectedHouseholdIdProvider);
      if (selectedId == householdId) {
        ref.read(selectedHouseholdIdProvider.notifier).select(null);
      }

      state = const AsyncData(null);
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }
}

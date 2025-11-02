import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_model.freezed.dart';
part 'member_model.g.dart';

enum HouseholdRole {
  admin,
  editor,
  viewer,
}

enum MemberStatus {
  active,
  invited,
  inactive,
}

@freezed
class MemberModel with _$MemberModel {
  const factory MemberModel({
    required String userId,
    required String householdId,
    required String displayName,
    String? email,
    String? photoURL,
    @Default(HouseholdRole.editor) HouseholdRole role,
    @Default(MemberStatus.active) MemberStatus status,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required DateTime joinedAt,
    String? invitedBy,
    @Default(MemberPermissions()) MemberPermissions permissions,
  }) = _MemberModel;

  factory MemberModel.fromJson(Map<String, dynamic> json) =>
      _$MemberModelFromJson(json);
}

@freezed
class MemberPermissions with _$MemberPermissions {
  const factory MemberPermissions({
    @Default(true) bool canViewExpenses,
    @Default(true) bool canAddExpenses,
    @Default(false) bool canEditOthersExpenses,
    @Default(false) bool canDeleteExpenses,
    @Default(false) bool canManageMembers,
    @Default(false) bool canManageCategories,
    @Default(false) bool canManageProjects,
    @Default(false) bool canManageSettings,
    @Default(false) bool canExportData,
  }) = _MemberPermissions;

  factory MemberPermissions.fromJson(Map<String, dynamic> json) =>
      _$MemberPermissionsFromJson(json);
}

extension RolePermissions on HouseholdRole {
  MemberPermissions get defaultPermissions {
    switch (this) {
      case HouseholdRole.admin:
        return const MemberPermissions(
          canViewExpenses: true,
          canAddExpenses: true,
          canEditOthersExpenses: true,
          canDeleteExpenses: true,
          canManageMembers: true,
          canManageCategories: true,
          canManageProjects: true,
          canManageSettings: true,
          canExportData: true,
        );
      case HouseholdRole.editor:
        return const MemberPermissions(
          canViewExpenses: true,
          canAddExpenses: true,
          canEditOthersExpenses: false,
          canDeleteExpenses: false,
          canManageMembers: false,
          canManageCategories: true,
          canManageProjects: true,
          canManageSettings: false,
          canExportData: true,
        );
      case HouseholdRole.viewer:
        return const MemberPermissions();
    }
  }
}

// Helper functions for Timestamp conversion
DateTime _timestampFromJson(dynamic timestamp) {
  if (timestamp is Timestamp) {
    return timestamp.toDate();
  }
  if (timestamp is String) {
    return DateTime.parse(timestamp);
  }
  return DateTime.now();
}

dynamic _timestampToJson(DateTime dateTime) => Timestamp.fromDate(dateTime);

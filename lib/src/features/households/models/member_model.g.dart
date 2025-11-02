// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberModelImpl _$$MemberModelImplFromJson(Map<String, dynamic> json) =>
    _$MemberModelImpl(
      userId: json['userId'] as String,
      householdId: json['householdId'] as String,
      displayName: json['displayName'] as String,
      email: json['email'] as String?,
      photoURL: json['photoURL'] as String?,
      role:
          $enumDecodeNullable(_$HouseholdRoleEnumMap, json['role']) ??
          HouseholdRole.editor,
      status:
          $enumDecodeNullable(_$MemberStatusEnumMap, json['status']) ??
          MemberStatus.active,
      joinedAt: _timestampFromJson(json['joinedAt']),
      invitedBy: json['invitedBy'] as String?,
      permissions: json['permissions'] == null
          ? const MemberPermissions()
          : MemberPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$MemberModelImplToJson(_$MemberModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'householdId': instance.householdId,
      'displayName': instance.displayName,
      'email': instance.email,
      'photoURL': instance.photoURL,
      'role': _$HouseholdRoleEnumMap[instance.role]!,
      'status': _$MemberStatusEnumMap[instance.status]!,
      'joinedAt': _timestampToJson(instance.joinedAt),
      'invitedBy': instance.invitedBy,
      'permissions': instance.permissions,
    };

const _$HouseholdRoleEnumMap = {
  HouseholdRole.admin: 'admin',
  HouseholdRole.editor: 'editor',
  HouseholdRole.viewer: 'viewer',
};

const _$MemberStatusEnumMap = {
  MemberStatus.active: 'active',
  MemberStatus.invited: 'invited',
  MemberStatus.inactive: 'inactive',
};

_$MemberPermissionsImpl _$$MemberPermissionsImplFromJson(
  Map<String, dynamic> json,
) => _$MemberPermissionsImpl(
  canViewExpenses: json['canViewExpenses'] as bool? ?? true,
  canAddExpenses: json['canAddExpenses'] as bool? ?? true,
  canEditOthersExpenses: json['canEditOthersExpenses'] as bool? ?? false,
  canDeleteExpenses: json['canDeleteExpenses'] as bool? ?? false,
  canManageMembers: json['canManageMembers'] as bool? ?? false,
  canManageCategories: json['canManageCategories'] as bool? ?? false,
  canManageProjects: json['canManageProjects'] as bool? ?? false,
  canManageSettings: json['canManageSettings'] as bool? ?? false,
  canExportData: json['canExportData'] as bool? ?? false,
);

Map<String, dynamic> _$$MemberPermissionsImplToJson(
  _$MemberPermissionsImpl instance,
) => <String, dynamic>{
  'canViewExpenses': instance.canViewExpenses,
  'canAddExpenses': instance.canAddExpenses,
  'canEditOthersExpenses': instance.canEditOthersExpenses,
  'canDeleteExpenses': instance.canDeleteExpenses,
  'canManageMembers': instance.canManageMembers,
  'canManageCategories': instance.canManageCategories,
  'canManageProjects': instance.canManageProjects,
  'canManageSettings': instance.canManageSettings,
  'canExportData': instance.canExportData,
};

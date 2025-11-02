// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MemberModel _$MemberModelFromJson(Map<String, dynamic> json) {
  return _MemberModel.fromJson(json);
}

/// @nodoc
mixin _$MemberModel {
  String get userId => throw _privateConstructorUsedError;
  String get householdId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;
  HouseholdRole get role => throw _privateConstructorUsedError;
  MemberStatus get status => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get joinedAt => throw _privateConstructorUsedError;
  String? get invitedBy => throw _privateConstructorUsedError;
  MemberPermissions get permissions => throw _privateConstructorUsedError;

  /// Serializes this MemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberModelCopyWith<MemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberModelCopyWith<$Res> {
  factory $MemberModelCopyWith(
    MemberModel value,
    $Res Function(MemberModel) then,
  ) = _$MemberModelCopyWithImpl<$Res, MemberModel>;
  @useResult
  $Res call({
    String userId,
    String householdId,
    String displayName,
    String? email,
    String? photoURL,
    HouseholdRole role,
    MemberStatus status,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime joinedAt,
    String? invitedBy,
    MemberPermissions permissions,
  });

  $MemberPermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class _$MemberModelCopyWithImpl<$Res, $Val extends MemberModel>
    implements $MemberModelCopyWith<$Res> {
  _$MemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? householdId = null,
    Object? displayName = null,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? role = null,
    Object? status = null,
    Object? joinedAt = null,
    Object? invitedBy = freezed,
    Object? permissions = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            householdId: null == householdId
                ? _value.householdId
                : householdId // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            photoURL: freezed == photoURL
                ? _value.photoURL
                : photoURL // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as HouseholdRole,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MemberStatus,
            joinedAt: null == joinedAt
                ? _value.joinedAt
                : joinedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            invitedBy: freezed == invitedBy
                ? _value.invitedBy
                : invitedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            permissions: null == permissions
                ? _value.permissions
                : permissions // ignore: cast_nullable_to_non_nullable
                      as MemberPermissions,
          )
          as $Val,
    );
  }

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MemberPermissionsCopyWith<$Res> get permissions {
    return $MemberPermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberModelImplCopyWith<$Res>
    implements $MemberModelCopyWith<$Res> {
  factory _$$MemberModelImplCopyWith(
    _$MemberModelImpl value,
    $Res Function(_$MemberModelImpl) then,
  ) = __$$MemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String householdId,
    String displayName,
    String? email,
    String? photoURL,
    HouseholdRole role,
    MemberStatus status,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime joinedAt,
    String? invitedBy,
    MemberPermissions permissions,
  });

  @override
  $MemberPermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class __$$MemberModelImplCopyWithImpl<$Res>
    extends _$MemberModelCopyWithImpl<$Res, _$MemberModelImpl>
    implements _$$MemberModelImplCopyWith<$Res> {
  __$$MemberModelImplCopyWithImpl(
    _$MemberModelImpl _value,
    $Res Function(_$MemberModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? householdId = null,
    Object? displayName = null,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? role = null,
    Object? status = null,
    Object? joinedAt = null,
    Object? invitedBy = freezed,
    Object? permissions = null,
  }) {
    return _then(
      _$MemberModelImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        householdId: null == householdId
            ? _value.householdId
            : householdId // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        photoURL: freezed == photoURL
            ? _value.photoURL
            : photoURL // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as HouseholdRole,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MemberStatus,
        joinedAt: null == joinedAt
            ? _value.joinedAt
            : joinedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        invitedBy: freezed == invitedBy
            ? _value.invitedBy
            : invitedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        permissions: null == permissions
            ? _value.permissions
            : permissions // ignore: cast_nullable_to_non_nullable
                  as MemberPermissions,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberModelImpl implements _MemberModel {
  const _$MemberModelImpl({
    required this.userId,
    required this.householdId,
    required this.displayName,
    this.email,
    this.photoURL,
    this.role = HouseholdRole.editor,
    this.status = MemberStatus.active,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required this.joinedAt,
    this.invitedBy,
    this.permissions = const MemberPermissions(),
  });

  factory _$MemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String householdId;
  @override
  final String displayName;
  @override
  final String? email;
  @override
  final String? photoURL;
  @override
  @JsonKey()
  final HouseholdRole role;
  @override
  @JsonKey()
  final MemberStatus status;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  final DateTime joinedAt;
  @override
  final String? invitedBy;
  @override
  @JsonKey()
  final MemberPermissions permissions;

  @override
  String toString() {
    return 'MemberModel(userId: $userId, householdId: $householdId, displayName: $displayName, email: $email, photoURL: $photoURL, role: $role, status: $status, joinedAt: $joinedAt, invitedBy: $invitedBy, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.householdId, householdId) ||
                other.householdId == householdId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.joinedAt, joinedAt) ||
                other.joinedAt == joinedAt) &&
            (identical(other.invitedBy, invitedBy) ||
                other.invitedBy == invitedBy) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    householdId,
    displayName,
    email,
    photoURL,
    role,
    status,
    joinedAt,
    invitedBy,
    permissions,
  );

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      __$$MemberModelImplCopyWithImpl<_$MemberModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberModelImplToJson(this);
  }
}

abstract class _MemberModel implements MemberModel {
  const factory _MemberModel({
    required final String userId,
    required final String householdId,
    required final String displayName,
    final String? email,
    final String? photoURL,
    final HouseholdRole role,
    final MemberStatus status,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required final DateTime joinedAt,
    final String? invitedBy,
    final MemberPermissions permissions,
  }) = _$MemberModelImpl;

  factory _MemberModel.fromJson(Map<String, dynamic> json) =
      _$MemberModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get householdId;
  @override
  String get displayName;
  @override
  String? get email;
  @override
  String? get photoURL;
  @override
  HouseholdRole get role;
  @override
  MemberStatus get status;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get joinedAt;
  @override
  String? get invitedBy;
  @override
  MemberPermissions get permissions;

  /// Create a copy of MemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberModelImplCopyWith<_$MemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberPermissions _$MemberPermissionsFromJson(Map<String, dynamic> json) {
  return _MemberPermissions.fromJson(json);
}

/// @nodoc
mixin _$MemberPermissions {
  bool get canViewExpenses => throw _privateConstructorUsedError;
  bool get canAddExpenses => throw _privateConstructorUsedError;
  bool get canEditOthersExpenses => throw _privateConstructorUsedError;
  bool get canDeleteExpenses => throw _privateConstructorUsedError;
  bool get canManageMembers => throw _privateConstructorUsedError;
  bool get canManageCategories => throw _privateConstructorUsedError;
  bool get canManageProjects => throw _privateConstructorUsedError;
  bool get canManageSettings => throw _privateConstructorUsedError;
  bool get canExportData => throw _privateConstructorUsedError;

  /// Serializes this MemberPermissions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MemberPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MemberPermissionsCopyWith<MemberPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberPermissionsCopyWith<$Res> {
  factory $MemberPermissionsCopyWith(
    MemberPermissions value,
    $Res Function(MemberPermissions) then,
  ) = _$MemberPermissionsCopyWithImpl<$Res, MemberPermissions>;
  @useResult
  $Res call({
    bool canViewExpenses,
    bool canAddExpenses,
    bool canEditOthersExpenses,
    bool canDeleteExpenses,
    bool canManageMembers,
    bool canManageCategories,
    bool canManageProjects,
    bool canManageSettings,
    bool canExportData,
  });
}

/// @nodoc
class _$MemberPermissionsCopyWithImpl<$Res, $Val extends MemberPermissions>
    implements $MemberPermissionsCopyWith<$Res> {
  _$MemberPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MemberPermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canViewExpenses = null,
    Object? canAddExpenses = null,
    Object? canEditOthersExpenses = null,
    Object? canDeleteExpenses = null,
    Object? canManageMembers = null,
    Object? canManageCategories = null,
    Object? canManageProjects = null,
    Object? canManageSettings = null,
    Object? canExportData = null,
  }) {
    return _then(
      _value.copyWith(
            canViewExpenses: null == canViewExpenses
                ? _value.canViewExpenses
                : canViewExpenses // ignore: cast_nullable_to_non_nullable
                      as bool,
            canAddExpenses: null == canAddExpenses
                ? _value.canAddExpenses
                : canAddExpenses // ignore: cast_nullable_to_non_nullable
                      as bool,
            canEditOthersExpenses: null == canEditOthersExpenses
                ? _value.canEditOthersExpenses
                : canEditOthersExpenses // ignore: cast_nullable_to_non_nullable
                      as bool,
            canDeleteExpenses: null == canDeleteExpenses
                ? _value.canDeleteExpenses
                : canDeleteExpenses // ignore: cast_nullable_to_non_nullable
                      as bool,
            canManageMembers: null == canManageMembers
                ? _value.canManageMembers
                : canManageMembers // ignore: cast_nullable_to_non_nullable
                      as bool,
            canManageCategories: null == canManageCategories
                ? _value.canManageCategories
                : canManageCategories // ignore: cast_nullable_to_non_nullable
                      as bool,
            canManageProjects: null == canManageProjects
                ? _value.canManageProjects
                : canManageProjects // ignore: cast_nullable_to_non_nullable
                      as bool,
            canManageSettings: null == canManageSettings
                ? _value.canManageSettings
                : canManageSettings // ignore: cast_nullable_to_non_nullable
                      as bool,
            canExportData: null == canExportData
                ? _value.canExportData
                : canExportData // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MemberPermissionsImplCopyWith<$Res>
    implements $MemberPermissionsCopyWith<$Res> {
  factory _$$MemberPermissionsImplCopyWith(
    _$MemberPermissionsImpl value,
    $Res Function(_$MemberPermissionsImpl) then,
  ) = __$$MemberPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool canViewExpenses,
    bool canAddExpenses,
    bool canEditOthersExpenses,
    bool canDeleteExpenses,
    bool canManageMembers,
    bool canManageCategories,
    bool canManageProjects,
    bool canManageSettings,
    bool canExportData,
  });
}

/// @nodoc
class __$$MemberPermissionsImplCopyWithImpl<$Res>
    extends _$MemberPermissionsCopyWithImpl<$Res, _$MemberPermissionsImpl>
    implements _$$MemberPermissionsImplCopyWith<$Res> {
  __$$MemberPermissionsImplCopyWithImpl(
    _$MemberPermissionsImpl _value,
    $Res Function(_$MemberPermissionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MemberPermissions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canViewExpenses = null,
    Object? canAddExpenses = null,
    Object? canEditOthersExpenses = null,
    Object? canDeleteExpenses = null,
    Object? canManageMembers = null,
    Object? canManageCategories = null,
    Object? canManageProjects = null,
    Object? canManageSettings = null,
    Object? canExportData = null,
  }) {
    return _then(
      _$MemberPermissionsImpl(
        canViewExpenses: null == canViewExpenses
            ? _value.canViewExpenses
            : canViewExpenses // ignore: cast_nullable_to_non_nullable
                  as bool,
        canAddExpenses: null == canAddExpenses
            ? _value.canAddExpenses
            : canAddExpenses // ignore: cast_nullable_to_non_nullable
                  as bool,
        canEditOthersExpenses: null == canEditOthersExpenses
            ? _value.canEditOthersExpenses
            : canEditOthersExpenses // ignore: cast_nullable_to_non_nullable
                  as bool,
        canDeleteExpenses: null == canDeleteExpenses
            ? _value.canDeleteExpenses
            : canDeleteExpenses // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageMembers: null == canManageMembers
            ? _value.canManageMembers
            : canManageMembers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageCategories: null == canManageCategories
            ? _value.canManageCategories
            : canManageCategories // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageProjects: null == canManageProjects
            ? _value.canManageProjects
            : canManageProjects // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageSettings: null == canManageSettings
            ? _value.canManageSettings
            : canManageSettings // ignore: cast_nullable_to_non_nullable
                  as bool,
        canExportData: null == canExportData
            ? _value.canExportData
            : canExportData // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberPermissionsImpl implements _MemberPermissions {
  const _$MemberPermissionsImpl({
    this.canViewExpenses = true,
    this.canAddExpenses = true,
    this.canEditOthersExpenses = false,
    this.canDeleteExpenses = false,
    this.canManageMembers = false,
    this.canManageCategories = false,
    this.canManageProjects = false,
    this.canManageSettings = false,
    this.canExportData = false,
  });

  factory _$MemberPermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberPermissionsImplFromJson(json);

  @override
  @JsonKey()
  final bool canViewExpenses;
  @override
  @JsonKey()
  final bool canAddExpenses;
  @override
  @JsonKey()
  final bool canEditOthersExpenses;
  @override
  @JsonKey()
  final bool canDeleteExpenses;
  @override
  @JsonKey()
  final bool canManageMembers;
  @override
  @JsonKey()
  final bool canManageCategories;
  @override
  @JsonKey()
  final bool canManageProjects;
  @override
  @JsonKey()
  final bool canManageSettings;
  @override
  @JsonKey()
  final bool canExportData;

  @override
  String toString() {
    return 'MemberPermissions(canViewExpenses: $canViewExpenses, canAddExpenses: $canAddExpenses, canEditOthersExpenses: $canEditOthersExpenses, canDeleteExpenses: $canDeleteExpenses, canManageMembers: $canManageMembers, canManageCategories: $canManageCategories, canManageProjects: $canManageProjects, canManageSettings: $canManageSettings, canExportData: $canExportData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberPermissionsImpl &&
            (identical(other.canViewExpenses, canViewExpenses) ||
                other.canViewExpenses == canViewExpenses) &&
            (identical(other.canAddExpenses, canAddExpenses) ||
                other.canAddExpenses == canAddExpenses) &&
            (identical(other.canEditOthersExpenses, canEditOthersExpenses) ||
                other.canEditOthersExpenses == canEditOthersExpenses) &&
            (identical(other.canDeleteExpenses, canDeleteExpenses) ||
                other.canDeleteExpenses == canDeleteExpenses) &&
            (identical(other.canManageMembers, canManageMembers) ||
                other.canManageMembers == canManageMembers) &&
            (identical(other.canManageCategories, canManageCategories) ||
                other.canManageCategories == canManageCategories) &&
            (identical(other.canManageProjects, canManageProjects) ||
                other.canManageProjects == canManageProjects) &&
            (identical(other.canManageSettings, canManageSettings) ||
                other.canManageSettings == canManageSettings) &&
            (identical(other.canExportData, canExportData) ||
                other.canExportData == canExportData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    canViewExpenses,
    canAddExpenses,
    canEditOthersExpenses,
    canDeleteExpenses,
    canManageMembers,
    canManageCategories,
    canManageProjects,
    canManageSettings,
    canExportData,
  );

  /// Create a copy of MemberPermissions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberPermissionsImplCopyWith<_$MemberPermissionsImpl> get copyWith =>
      __$$MemberPermissionsImplCopyWithImpl<_$MemberPermissionsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberPermissionsImplToJson(this);
  }
}

abstract class _MemberPermissions implements MemberPermissions {
  const factory _MemberPermissions({
    final bool canViewExpenses,
    final bool canAddExpenses,
    final bool canEditOthersExpenses,
    final bool canDeleteExpenses,
    final bool canManageMembers,
    final bool canManageCategories,
    final bool canManageProjects,
    final bool canManageSettings,
    final bool canExportData,
  }) = _$MemberPermissionsImpl;

  factory _MemberPermissions.fromJson(Map<String, dynamic> json) =
      _$MemberPermissionsImpl.fromJson;

  @override
  bool get canViewExpenses;
  @override
  bool get canAddExpenses;
  @override
  bool get canEditOthersExpenses;
  @override
  bool get canDeleteExpenses;
  @override
  bool get canManageMembers;
  @override
  bool get canManageCategories;
  @override
  bool get canManageProjects;
  @override
  bool get canManageSettings;
  @override
  bool get canExportData;

  /// Create a copy of MemberPermissions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MemberPermissionsImplCopyWith<_$MemberPermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

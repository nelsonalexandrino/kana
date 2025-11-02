// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  String get id => throw _privateConstructorUsedError;
  String get householdId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get budget => throw _privateConstructorUsedError;
  double get spent => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  DateTime? get endDate => throw _privateConstructorUsedError;
  ProjectStatus get status => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  List<String> get assignedTo => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ProjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
    ProjectModel value,
    $Res Function(ProjectModel) then,
  ) = _$ProjectModelCopyWithImpl<$Res, ProjectModel>;
  @useResult
  $Res call({
    String id,
    String householdId,
    String name,
    String description,
    double budget,
    double spent,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime startDate,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? endDate,
    ProjectStatus status,
    String createdBy,
    List<String> assignedTo,
    List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? createdAt,
  });
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res, $Val extends ProjectModel>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? householdId = null,
    Object? name = null,
    Object? description = null,
    Object? budget = null,
    Object? spent = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? status = null,
    Object? createdBy = null,
    Object? assignedTo = null,
    Object? tags = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            householdId: null == householdId
                ? _value.householdId
                : householdId // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            budget: null == budget
                ? _value.budget
                : budget // ignore: cast_nullable_to_non_nullable
                      as double,
            spent: null == spent
                ? _value.spent
                : spent // ignore: cast_nullable_to_non_nullable
                      as double,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ProjectStatus,
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as String,
            assignedTo: null == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProjectModelImplCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$ProjectModelImplCopyWith(
    _$ProjectModelImpl value,
    $Res Function(_$ProjectModelImpl) then,
  ) = __$$ProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String householdId,
    String name,
    String description,
    double budget,
    double spent,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime startDate,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? endDate,
    ProjectStatus status,
    String createdBy,
    List<String> assignedTo,
    List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$ProjectModelImplCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res, _$ProjectModelImpl>
    implements _$$ProjectModelImplCopyWith<$Res> {
  __$$ProjectModelImplCopyWithImpl(
    _$ProjectModelImpl _value,
    $Res Function(_$ProjectModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? householdId = null,
    Object? name = null,
    Object? description = null,
    Object? budget = null,
    Object? spent = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? status = null,
    Object? createdBy = null,
    Object? assignedTo = null,
    Object? tags = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ProjectModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        householdId: null == householdId
            ? _value.householdId
            : householdId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        budget: null == budget
            ? _value.budget
            : budget // ignore: cast_nullable_to_non_nullable
                  as double,
        spent: null == spent
            ? _value.spent
            : spent // ignore: cast_nullable_to_non_nullable
                  as double,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: freezed == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ProjectStatus,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as String,
        assignedTo: null == assignedTo
            ? _value._assignedTo
            : assignedTo // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectModelImpl implements _ProjectModel {
  const _$ProjectModelImpl({
    required this.id,
    required this.householdId,
    required this.name,
    this.description = '',
    required this.budget,
    this.spent = 0.0,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required this.startDate,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    this.endDate,
    this.status = ProjectStatus.active,
    required this.createdBy,
    final List<String> assignedTo = const [],
    final List<String> tags = const [],
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    this.createdAt,
  }) : _assignedTo = assignedTo,
       _tags = tags;

  factory _$ProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectModelImplFromJson(json);

  @override
  final String id;
  @override
  final String householdId;
  @override
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final double budget;
  @override
  @JsonKey()
  final double spent;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  final DateTime startDate;
  @override
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  final DateTime? endDate;
  @override
  @JsonKey()
  final ProjectStatus status;
  @override
  final String createdBy;
  final List<String> _assignedTo;
  @override
  @JsonKey()
  List<String> get assignedTo {
    if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedTo);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ProjectModel(id: $id, householdId: $householdId, name: $name, description: $description, budget: $budget, spent: $spent, startDate: $startDate, endDate: $endDate, status: $status, createdBy: $createdBy, assignedTo: $assignedTo, tags: $tags, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.householdId, householdId) ||
                other.householdId == householdId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.spent, spent) || other.spent == spent) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            const DeepCollectionEquality().equals(
              other._assignedTo,
              _assignedTo,
            ) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    householdId,
    name,
    description,
    budget,
    spent,
    startDate,
    endDate,
    status,
    createdBy,
    const DeepCollectionEquality().hash(_assignedTo),
    const DeepCollectionEquality().hash(_tags),
    createdAt,
  );

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      __$$ProjectModelImplCopyWithImpl<_$ProjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectModelImplToJson(this);
  }
}

abstract class _ProjectModel implements ProjectModel {
  const factory _ProjectModel({
    required final String id,
    required final String householdId,
    required final String name,
    final String description,
    required final double budget,
    final double spent,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required final DateTime startDate,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    final DateTime? endDate,
    final ProjectStatus status,
    required final String createdBy,
    final List<String> assignedTo,
    final List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    final DateTime? createdAt,
  }) = _$ProjectModelImpl;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$ProjectModelImpl.fromJson;

  @override
  String get id;
  @override
  String get householdId;
  @override
  String get name;
  @override
  String get description;
  @override
  double get budget;
  @override
  double get spent;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get startDate;
  @override
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  DateTime? get endDate;
  @override
  ProjectStatus get status;
  @override
  String get createdBy;
  @override
  List<String> get assignedTo;
  @override
  List<String> get tags;
  @override
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  DateTime? get createdAt;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

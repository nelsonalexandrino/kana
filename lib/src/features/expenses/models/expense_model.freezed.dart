// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) {
  return _ExpenseModel.fromJson(json);
}

/// @nodoc
mixin _$ExpenseModel {
  String get id => throw _privateConstructorUsedError;
  String get householdId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get spentDate => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get paidBy => throw _privateConstructorUsedError;
  List<String> get splitBetween => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  String? get receiptUrl => throw _privateConstructorUsedError;
  bool get isRecurring => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ExpenseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseModelCopyWith<ExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseModelCopyWith<$Res> {
  factory $ExpenseModelCopyWith(
    ExpenseModel value,
    $Res Function(ExpenseModel) then,
  ) = _$ExpenseModelCopyWithImpl<$Res, ExpenseModel>;
  @useResult
  $Res call({
    String id,
    String householdId,
    String categoryId,
    double amount,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime spentDate,
    String createdBy,
    String paidBy,
    List<String> splitBetween,
    String note,
    String? projectId,
    String? receiptUrl,
    bool isRecurring,
    List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? createdAt,
  });
}

/// @nodoc
class _$ExpenseModelCopyWithImpl<$Res, $Val extends ExpenseModel>
    implements $ExpenseModelCopyWith<$Res> {
  _$ExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? householdId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? spentDate = null,
    Object? createdBy = null,
    Object? paidBy = null,
    Object? splitBetween = null,
    Object? note = null,
    Object? projectId = freezed,
    Object? receiptUrl = freezed,
    Object? isRecurring = null,
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
            categoryId: null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            spentDate: null == spentDate
                ? _value.spentDate
                : spentDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as String,
            paidBy: null == paidBy
                ? _value.paidBy
                : paidBy // ignore: cast_nullable_to_non_nullable
                      as String,
            splitBetween: null == splitBetween
                ? _value.splitBetween
                : splitBetween // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
            projectId: freezed == projectId
                ? _value.projectId
                : projectId // ignore: cast_nullable_to_non_nullable
                      as String?,
            receiptUrl: freezed == receiptUrl
                ? _value.receiptUrl
                : receiptUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            isRecurring: null == isRecurring
                ? _value.isRecurring
                : isRecurring // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$ExpenseModelImplCopyWith<$Res>
    implements $ExpenseModelCopyWith<$Res> {
  factory _$$ExpenseModelImplCopyWith(
    _$ExpenseModelImpl value,
    $Res Function(_$ExpenseModelImpl) then,
  ) = __$$ExpenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String householdId,
    String categoryId,
    double amount,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime spentDate,
    String createdBy,
    String paidBy,
    List<String> splitBetween,
    String note,
    String? projectId,
    String? receiptUrl,
    bool isRecurring,
    List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$ExpenseModelImplCopyWithImpl<$Res>
    extends _$ExpenseModelCopyWithImpl<$Res, _$ExpenseModelImpl>
    implements _$$ExpenseModelImplCopyWith<$Res> {
  __$$ExpenseModelImplCopyWithImpl(
    _$ExpenseModelImpl _value,
    $Res Function(_$ExpenseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? householdId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? spentDate = null,
    Object? createdBy = null,
    Object? paidBy = null,
    Object? splitBetween = null,
    Object? note = null,
    Object? projectId = freezed,
    Object? receiptUrl = freezed,
    Object? isRecurring = null,
    Object? tags = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ExpenseModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        householdId: null == householdId
            ? _value.householdId
            : householdId // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryId: null == categoryId
            ? _value.categoryId
            : categoryId // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        spentDate: null == spentDate
            ? _value.spentDate
            : spentDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as String,
        paidBy: null == paidBy
            ? _value.paidBy
            : paidBy // ignore: cast_nullable_to_non_nullable
                  as String,
        splitBetween: null == splitBetween
            ? _value._splitBetween
            : splitBetween // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
        projectId: freezed == projectId
            ? _value.projectId
            : projectId // ignore: cast_nullable_to_non_nullable
                  as String?,
        receiptUrl: freezed == receiptUrl
            ? _value.receiptUrl
            : receiptUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isRecurring: null == isRecurring
            ? _value.isRecurring
            : isRecurring // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$ExpenseModelImpl implements _ExpenseModel {
  const _$ExpenseModelImpl({
    required this.id,
    required this.householdId,
    required this.categoryId,
    required this.amount,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required this.spentDate,
    required this.createdBy,
    required this.paidBy,
    final List<String> splitBetween = const [],
    this.note = '',
    this.projectId,
    this.receiptUrl,
    this.isRecurring = false,
    final List<String> tags = const [],
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    this.createdAt,
  }) : _splitBetween = splitBetween,
       _tags = tags;

  factory _$ExpenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String householdId;
  @override
  final String categoryId;
  @override
  final double amount;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  final DateTime spentDate;
  @override
  final String createdBy;
  @override
  final String paidBy;
  final List<String> _splitBetween;
  @override
  @JsonKey()
  List<String> get splitBetween {
    if (_splitBetween is EqualUnmodifiableListView) return _splitBetween;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_splitBetween);
  }

  @override
  @JsonKey()
  final String note;
  @override
  final String? projectId;
  @override
  final String? receiptUrl;
  @override
  @JsonKey()
  final bool isRecurring;
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
    return 'ExpenseModel(id: $id, householdId: $householdId, categoryId: $categoryId, amount: $amount, spentDate: $spentDate, createdBy: $createdBy, paidBy: $paidBy, splitBetween: $splitBetween, note: $note, projectId: $projectId, receiptUrl: $receiptUrl, isRecurring: $isRecurring, tags: $tags, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.householdId, householdId) ||
                other.householdId == householdId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.spentDate, spentDate) ||
                other.spentDate == spentDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.paidBy, paidBy) || other.paidBy == paidBy) &&
            const DeepCollectionEquality().equals(
              other._splitBetween,
              _splitBetween,
            ) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.receiptUrl, receiptUrl) ||
                other.receiptUrl == receiptUrl) &&
            (identical(other.isRecurring, isRecurring) ||
                other.isRecurring == isRecurring) &&
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
    categoryId,
    amount,
    spentDate,
    createdBy,
    paidBy,
    const DeepCollectionEquality().hash(_splitBetween),
    note,
    projectId,
    receiptUrl,
    isRecurring,
    const DeepCollectionEquality().hash(_tags),
    createdAt,
  );

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseModelImplCopyWith<_$ExpenseModelImpl> get copyWith =>
      __$$ExpenseModelImplCopyWithImpl<_$ExpenseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenseModelImplToJson(this);
  }
}

abstract class _ExpenseModel implements ExpenseModel {
  const factory _ExpenseModel({
    required final String id,
    required final String householdId,
    required final String categoryId,
    required final double amount,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required final DateTime spentDate,
    required final String createdBy,
    required final String paidBy,
    final List<String> splitBetween,
    final String note,
    final String? projectId,
    final String? receiptUrl,
    final bool isRecurring,
    final List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    final DateTime? createdAt,
  }) = _$ExpenseModelImpl;

  factory _ExpenseModel.fromJson(Map<String, dynamic> json) =
      _$ExpenseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get householdId;
  @override
  String get categoryId;
  @override
  double get amount;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get spentDate;
  @override
  String get createdBy;
  @override
  String get paidBy;
  @override
  List<String> get splitBetween;
  @override
  String get note;
  @override
  String? get projectId;
  @override
  String? get receiptUrl;
  @override
  bool get isRecurring;
  @override
  List<String> get tags;
  @override
  @JsonKey(
    fromJson: _nullableTimestampFromJson,
    toJson: _nullableTimestampToJson,
  )
  DateTime? get createdAt;

  /// Create a copy of ExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseModelImplCopyWith<_$ExpenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

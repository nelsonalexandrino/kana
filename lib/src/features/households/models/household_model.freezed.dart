// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'household_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HouseholdModel _$HouseholdModelFromJson(Map<String, dynamic> json) {
  return _HouseholdModel.fromJson(json);
}

/// @nodoc
mixin _$HouseholdModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get createdAt => throw _privateConstructorUsedError;
  double get monthlyBudget => throw _privateConstructorUsedError;
  int get billingDay => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  Map<String, dynamic> get settings => throw _privateConstructorUsedError;

  /// Serializes this HouseholdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseholdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseholdModelCopyWith<HouseholdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseholdModelCopyWith<$Res> {
  factory $HouseholdModelCopyWith(
    HouseholdModel value,
    $Res Function(HouseholdModel) then,
  ) = _$HouseholdModelCopyWithImpl<$Res, HouseholdModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String currency,
    String createdBy,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime createdAt,
    double monthlyBudget,
    int billingDay,
    String timezone,
    Map<String, dynamic> settings,
  });
}

/// @nodoc
class _$HouseholdModelCopyWithImpl<$Res, $Val extends HouseholdModel>
    implements $HouseholdModelCopyWith<$Res> {
  _$HouseholdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseholdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? currency = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? monthlyBudget = null,
    Object? billingDay = null,
    Object? timezone = null,
    Object? settings = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            currency: null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as String,
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            monthlyBudget: null == monthlyBudget
                ? _value.monthlyBudget
                : monthlyBudget // ignore: cast_nullable_to_non_nullable
                      as double,
            billingDay: null == billingDay
                ? _value.billingDay
                : billingDay // ignore: cast_nullable_to_non_nullable
                      as int,
            timezone: null == timezone
                ? _value.timezone
                : timezone // ignore: cast_nullable_to_non_nullable
                      as String,
            settings: null == settings
                ? _value.settings
                : settings // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HouseholdModelImplCopyWith<$Res>
    implements $HouseholdModelCopyWith<$Res> {
  factory _$$HouseholdModelImplCopyWith(
    _$HouseholdModelImpl value,
    $Res Function(_$HouseholdModelImpl) then,
  ) = __$$HouseholdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String currency,
    String createdBy,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    DateTime createdAt,
    double monthlyBudget,
    int billingDay,
    String timezone,
    Map<String, dynamic> settings,
  });
}

/// @nodoc
class __$$HouseholdModelImplCopyWithImpl<$Res>
    extends _$HouseholdModelCopyWithImpl<$Res, _$HouseholdModelImpl>
    implements _$$HouseholdModelImplCopyWith<$Res> {
  __$$HouseholdModelImplCopyWithImpl(
    _$HouseholdModelImpl _value,
    $Res Function(_$HouseholdModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HouseholdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? currency = null,
    Object? createdBy = null,
    Object? createdAt = null,
    Object? monthlyBudget = null,
    Object? billingDay = null,
    Object? timezone = null,
    Object? settings = null,
  }) {
    return _then(
      _$HouseholdModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        currency: null == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        monthlyBudget: null == monthlyBudget
            ? _value.monthlyBudget
            : monthlyBudget // ignore: cast_nullable_to_non_nullable
                  as double,
        billingDay: null == billingDay
            ? _value.billingDay
            : billingDay // ignore: cast_nullable_to_non_nullable
                  as int,
        timezone: null == timezone
            ? _value.timezone
            : timezone // ignore: cast_nullable_to_non_nullable
                  as String,
        settings: null == settings
            ? _value._settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseholdModelImpl implements _HouseholdModel {
  const _$HouseholdModelImpl({
    required this.id,
    required this.name,
    this.currency = 'USD',
    required this.createdBy,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required this.createdAt,
    this.monthlyBudget = 0.0,
    this.billingDay = 1,
    this.timezone = 'UTC',
    final Map<String, dynamic> settings = const {},
  }) : _settings = settings;

  factory _$HouseholdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseholdModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String currency;
  @override
  final String createdBy;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  final DateTime createdAt;
  @override
  @JsonKey()
  final double monthlyBudget;
  @override
  @JsonKey()
  final int billingDay;
  @override
  @JsonKey()
  final String timezone;
  final Map<String, dynamic> _settings;
  @override
  @JsonKey()
  Map<String, dynamic> get settings {
    if (_settings is EqualUnmodifiableMapView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_settings);
  }

  @override
  String toString() {
    return 'HouseholdModel(id: $id, name: $name, currency: $currency, createdBy: $createdBy, createdAt: $createdAt, monthlyBudget: $monthlyBudget, billingDay: $billingDay, timezone: $timezone, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseholdModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.monthlyBudget, monthlyBudget) ||
                other.monthlyBudget == monthlyBudget) &&
            (identical(other.billingDay, billingDay) ||
                other.billingDay == billingDay) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    currency,
    createdBy,
    createdAt,
    monthlyBudget,
    billingDay,
    timezone,
    const DeepCollectionEquality().hash(_settings),
  );

  /// Create a copy of HouseholdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseholdModelImplCopyWith<_$HouseholdModelImpl> get copyWith =>
      __$$HouseholdModelImplCopyWithImpl<_$HouseholdModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseholdModelImplToJson(this);
  }
}

abstract class _HouseholdModel implements HouseholdModel {
  const factory _HouseholdModel({
    required final String id,
    required final String name,
    final String currency,
    required final String createdBy,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required final DateTime createdAt,
    final double monthlyBudget,
    final int billingDay,
    final String timezone,
    final Map<String, dynamic> settings,
  }) = _$HouseholdModelImpl;

  factory _HouseholdModel.fromJson(Map<String, dynamic> json) =
      _$HouseholdModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get currency;
  @override
  String get createdBy;
  @override
  @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
  DateTime get createdAt;
  @override
  double get monthlyBudget;
  @override
  int get billingDay;
  @override
  String get timezone;
  @override
  Map<String, dynamic> get settings;

  /// Create a copy of HouseholdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseholdModelImplCopyWith<_$HouseholdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

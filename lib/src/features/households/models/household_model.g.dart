// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'household_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HouseholdModelImpl _$$HouseholdModelImplFromJson(Map<String, dynamic> json) =>
    _$HouseholdModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      currency: json['currency'] as String? ?? 'USD',
      createdBy: json['createdBy'] as String,
      createdAt: _timestampFromJson(json['createdAt']),
      monthlyBudget: (json['monthlyBudget'] as num?)?.toDouble() ?? 0.0,
      billingDay: (json['billingDay'] as num?)?.toInt() ?? 1,
      timezone: json['timezone'] as String? ?? 'UTC',
      settings: json['settings'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$HouseholdModelImplToJson(
  _$HouseholdModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'currency': instance.currency,
  'createdBy': instance.createdBy,
  'createdAt': _timestampToJson(instance.createdAt),
  'monthlyBudget': instance.monthlyBudget,
  'billingDay': instance.billingDay,
  'timezone': instance.timezone,
  'settings': instance.settings,
};

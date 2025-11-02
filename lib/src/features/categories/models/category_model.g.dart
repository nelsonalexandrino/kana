// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String,
      householdId: json['householdId'] as String,
      name: json['name'] as String,
      iconCodePoint: (json['iconCodePoint'] as num).toInt(),
      iconFontFamily: json['iconFontFamily'] as String,
      colorValue: (json['colorValue'] as num).toInt(),
      limit: (json['limit'] as num?)?.toDouble() ?? 100000.0,
      type:
          $enumDecodeNullable(_$CategoryTypeEnumMap, json['type']) ??
          CategoryType.household,
      createdBy: json['createdBy'] as String,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'householdId': instance.householdId,
      'name': instance.name,
      'iconCodePoint': instance.iconCodePoint,
      'iconFontFamily': instance.iconFontFamily,
      'colorValue': instance.colorValue,
      'limit': instance.limit,
      'type': _$CategoryTypeEnumMap[instance.type]!,
      'createdBy': instance.createdBy,
      'isDefault': instance.isDefault,
    };

const _$CategoryTypeEnumMap = {
  CategoryType.household: 'household',
  CategoryType.personal: 'personal',
};

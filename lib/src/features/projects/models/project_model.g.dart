// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      id: json['id'] as String,
      householdId: json['householdId'] as String,
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      budget: (json['budget'] as num).toDouble(),
      spent: (json['spent'] as num?)?.toDouble() ?? 0.0,
      startDate: _timestampFromJson(json['startDate']),
      endDate: _nullableTimestampFromJson(json['endDate']),
      status:
          $enumDecodeNullable(_$ProjectStatusEnumMap, json['status']) ??
          ProjectStatus.active,
      createdBy: json['createdBy'] as String,
      assignedTo:
          (json['assignedTo'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      createdAt: _nullableTimestampFromJson(json['createdAt']),
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'householdId': instance.householdId,
      'name': instance.name,
      'description': instance.description,
      'budget': instance.budget,
      'spent': instance.spent,
      'startDate': _timestampToJson(instance.startDate),
      'endDate': _nullableTimestampToJson(instance.endDate),
      'status': _$ProjectStatusEnumMap[instance.status]!,
      'createdBy': instance.createdBy,
      'assignedTo': instance.assignedTo,
      'tags': instance.tags,
      'createdAt': _nullableTimestampToJson(instance.createdAt),
    };

const _$ProjectStatusEnumMap = {
  ProjectStatus.active: 'active',
  ProjectStatus.onHold: 'onHold',
  ProjectStatus.completed: 'completed',
  ProjectStatus.archived: 'archived',
};

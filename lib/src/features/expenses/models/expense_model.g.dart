// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpenseModelImpl _$$ExpenseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExpenseModelImpl(
      id: json['id'] as String,
      householdId: json['householdId'] as String,
      categoryId: json['categoryId'] as String,
      amount: (json['amount'] as num).toDouble(),
      spentDate: _timestampFromJson(json['spentDate']),
      createdBy: json['createdBy'] as String,
      paidBy: json['paidBy'] as String,
      splitBetween:
          (json['splitBetween'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      note: json['note'] as String? ?? '',
      projectId: json['projectId'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      isRecurring: json['isRecurring'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      createdAt: _nullableTimestampFromJson(json['createdAt']),
    );

Map<String, dynamic> _$$ExpenseModelImplToJson(_$ExpenseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'householdId': instance.householdId,
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'spentDate': _timestampToJson(instance.spentDate),
      'createdBy': instance.createdBy,
      'paidBy': instance.paidBy,
      'splitBetween': instance.splitBetween,
      'note': instance.note,
      'projectId': instance.projectId,
      'receiptUrl': instance.receiptUrl,
      'isRecurring': instance.isRecurring,
      'tags': instance.tags,
      'createdAt': _nullableTimestampToJson(instance.createdAt),
    };

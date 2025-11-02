import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'household_model.freezed.dart';
part 'household_model.g.dart';

@freezed
class HouseholdModel with _$HouseholdModel {
  const factory HouseholdModel({
    required String id,
    required String name,
    @Default('USD') String currency,
    required String createdBy,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required DateTime createdAt,
    @Default(0.0) double monthlyBudget,
    @Default(1) int billingDay,
    @Default('UTC') String timezone,
    @Default({}) Map<String, dynamic> settings,
  }) = _HouseholdModel;

  factory HouseholdModel.fromJson(Map<String, dynamic> json) =>
      _$HouseholdModelFromJson(json);
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

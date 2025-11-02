import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_model.freezed.dart';
part 'project_model.g.dart';

enum ProjectStatus {
  active,
  onHold,
  completed,
  archived,
}

@freezed
class ProjectModel with _$ProjectModel {
  const factory ProjectModel({
    required String id,
    required String householdId,
    required String name,
    @Default('') String description,
    required double budget,
    @Default(0.0) double spent,
    @JsonKey(fromJson: _timestampFromJson, toJson: _timestampToJson)
    required DateTime startDate,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? endDate,
    @Default(ProjectStatus.active) ProjectStatus status,
    required String createdBy,
    @Default([]) List<String> assignedTo,
    @Default([]) List<String> tags,
    @JsonKey(
      fromJson: _nullableTimestampFromJson,
      toJson: _nullableTimestampToJson,
    )
    DateTime? createdAt,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
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

DateTime? _nullableTimestampFromJson(dynamic timestamp) {
  if (timestamp == null) return null;
  if (timestamp is Timestamp) {
    return timestamp.toDate();
  }
  if (timestamp is String) {
    return DateTime.parse(timestamp);
  }
  return null;
}

dynamic _timestampToJson(DateTime dateTime) => Timestamp.fromDate(dateTime);

dynamic _nullableTimestampToJson(DateTime? dateTime) =>
    dateTime != null ? Timestamp.fromDate(dateTime) : null;

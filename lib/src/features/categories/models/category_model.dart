import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

enum CategoryType {
  household,
  personal,
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String householdId,
    required String name,
    required int iconCodePoint,
    required String iconFontFamily,
    required int colorValue,
    @Default(100000.0) double limit,
    @Default(CategoryType.household) CategoryType type,
    required String createdBy,
    @Default(false) bool isDefault,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

extension CategoryModelX on CategoryModel {
  IconData get icon => IconData(
        iconCodePoint,
        fontFamily: iconFontFamily,
        fontPackage: iconFontFamily == 'MaterialIcons' ? null : 'fluentui_system_icons',
      );

  Color get color => Color(colorValue);
}

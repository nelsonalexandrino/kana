import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/category.dart';

class Expense {
  final _uuid = const Uuid();

  CategoryModel? category;
  double? value;
  String? id;
  DateTime? spentDate;

  Expense({this.category, this.value, this.spentDate}) {
    id = _uuid.v4();
  }

  void defaultDate() {
    spentDate = DateTime.now();
  }

  String? get categoryName => category?.name;
  IconData? get categoryIcon => category?.icon;
  String? get categoryID => category?.id;

  void describe() {
    // ignore: avoid_print
    print('You spent: $value in $categoryName');
  }
}

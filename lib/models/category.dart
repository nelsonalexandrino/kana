import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CategoryModel with ChangeNotifier {
  final _uuid = const Uuid();

  String name;
  IconData icon;
  String? _id;
  Color? color;
  int? colorIndex;
  double? limit;

  CategoryModel({
    this.name = '',
    this.icon = FluentIcons.question_24_regular,
    this.color,
    this.colorIndex,
    this.limit = 100000,
  }) {
    _id = _uuid.v4();
    //color = grey;
  }

  void changeColor(Color newColor) {
    color = newColor;
    notifyListeners();
  }

  void changeName(String newName) {
    name = newName;
    notifyListeners();
  }

  void changeIcon(IconData newIcon) {
    icon = newIcon;
    notifyListeners();
  }

  void setColorIndex(int index) {
    colorIndex = index;
    notifyListeners();
  }

  void setLimit(double newLimit) {
    limit = newLimit;
  }

  String? get id => _id;

  factory CategoryModel.from(CategoryModel model) {
    return CategoryModel(
      color: model.color,
      colorIndex: model.colorIndex,
      icon: model.icon,
      name: model.name,
      limit: model.limit,
    );
  }

  @override
  String toString() {
    return '\nName: $name\nIcon: $icon\nID: $id\nColor: $color\nLimit: $limit';
  }
}

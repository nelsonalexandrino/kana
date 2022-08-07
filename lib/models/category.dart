import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../utilities/colors.dart';

class CategoryModel with ChangeNotifier {
  final _uuid = const Uuid();

  String name;
  IconData icon;
  String? _id;
  Color? color;
  int? colorIndex;

  CategoryModel(
      {this.name = '', this.icon = Icons.money, this.color, this.colorIndex}) {
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

  String? get id => _id;

  factory CategoryModel.from(CategoryModel model) {
    return CategoryModel(
        color: model.color,
        colorIndex: model.colorIndex,
        icon: model.icon,
        name: model.name);
  }
}

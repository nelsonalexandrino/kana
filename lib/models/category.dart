import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CategoryModel with ChangeNotifier {
  final _uuid = const Uuid();

  String name;
  IconData icon;
  String? _id;
  Color? color;

  CategoryModel({this.name = '', this.icon = Icons.money, this.color}) {
    _id = _uuid.v4();
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

  String? get id => _id;
}

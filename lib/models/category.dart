import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class CategoryModel {
  final _uuid = const Uuid();

  String name;
  IconData icon;
  String? _id;
  Color? color;

  CategoryModel({this.name = '', this.icon = Icons.money, this.color}) {
    _id = _uuid.v4();
  }

  String? get id => _id;
}

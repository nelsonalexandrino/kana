import 'package:flutter/material.dart';

class ReportProvider with ChangeNotifier {
  int _selectedMonth = 0;

  int get selectedMonth => _selectedMonth;

  void setSelectedMonth(int index) {
    _selectedMonth = index;
    notifyListeners();
  }
}

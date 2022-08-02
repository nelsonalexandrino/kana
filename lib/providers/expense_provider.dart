import 'package:flutter/foundation.dart';

import '../providers/category_provider.dart';
import '../models/expense.dart';

class ExpenseProvider with ChangeNotifier, DiagnosticableTreeMixin {
  CategoryProvider _provider = CategoryProvider();
  update(CategoryProvider provider) {
    _provider = provider;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('expense', 0));
  }

  final report = {};

  final List<Expense> _userExpenses = [];

  final _expensesAsMap = {};

  void updateReport(Expense expense) {}

  List<Expense> get userExpenses => [..._userExpenses];

  Map get expensesAsMap => {..._expensesAsMap};

  Future<bool> addExpenses() async {
    if (_provider.getExpensiveAmount.isNotEmpty) {
      if (_provider.getExpensiveAmount != '0') {
        double value = double.parse(_provider.getExpensiveAmount);

        if (_provider.isCategorySelected) {
          var expense = Expense(
            value: value,
            category: _provider.categories
                .elementAt(_provider.getSelectedCategoryIndex),
          )..defaultDate();
          _userExpenses.add(
            expense,
          );
          notifyListeners();

          if (!_expensesAsMap.containsKey(expense.categoryID)) {
            _expensesAsMap.addAll({expense.categoryID: []});
          }

          _expensesAsMap.update(expense.categoryID, (value) {
            value.add(expense);
            return value;
          });

          return true;
        }
      }
    }
    return false;
  }
}

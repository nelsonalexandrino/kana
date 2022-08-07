import 'package:flutter/foundation.dart';

import '../providers/category_provider.dart';
import '../models/expense.dart';

class ExpenseProvider with ChangeNotifier, DiagnosticableTreeMixin {
  String _expensiveAmount = '';

  CategoryProvider _provider = CategoryProvider();
  update(CategoryProvider provider) {
    _provider = provider;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('expense', 0));
  }

  final _report = {};
  final List<Expense> _userExpenses = [];
  final Map<String, List<Expense>> _expensesAsMap = {};

  List<Expense> get userExpenses => [..._userExpenses];
  Map get expensesAsMap => {..._expensesAsMap};
  Map get report => {..._report};

  Future<bool> _updateReport(List<Expense> expenses, String categoryID) async {
    if (!_report.containsKey(categoryID)) {
      _report.addAll({categoryID: {}});
    }

    double totalAmount = 0.0;
    bool treding = false;
    double tredingValue = 2;

    for (Expense expense in expenses) {
      totalAmount += expense.value!;
    }

    _report.update(categoryID, (value) {
      var ola = _provider.bringTheCategory(categoryID);
      return {
        'totalAmount': totalAmount,
        'categoryName': ola.name,
        'categoryIcon': ola.icon,
        'categoryID': ola.id,
        'totalOfExpenses': expenses.length,
        'treading': treding,
        'tredingValue': tredingValue,
      };
    });

    notifyListeners();

    return true;
  }

  Future<bool> addExpenses() async {
    if (_provider.getExpensiveAmount.isNotEmpty) {
      if (_provider.getExpensiveAmount != '0') {
        double value = double.parse(_provider.getExpensiveAmount);
//TODO
        //if (_provider.isCategorySelected) {
        if (true) {
          var expense = Expense(
            value: value,
            // category: _provider.categories.elementAt(
            //   _provider.getSelectedCategoryIndex,
            // ),
          )..defaultDate();
          _userExpenses.add(
            expense,
          );
          notifyListeners();

          if (!_expensesAsMap.containsKey(expense.categoryID)) {
            _expensesAsMap.addAll({expense.categoryID!: []});
          }

          List<Expense> lastest =
              _expensesAsMap.update(expense.categoryID!, (value) {
            value.add(expense);

            return value;
          });

          _updateReport(lastest, expense.categoryID!);

          return true;
        }
      }
    }
    return false;
  }

  void backspace() {
    if (_expensiveAmount.isNotEmpty) {
      _expensiveAmount =
          _expensiveAmount.substring(0, _expensiveAmount.length - 1);
      notifyListeners();
    }
  }
}

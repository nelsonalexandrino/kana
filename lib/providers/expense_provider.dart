import 'package:flutter/foundation.dart';

import '../models/category.dart';
import '../models/expense.dart';

class ExpenseProvider with ChangeNotifier, DiagnosticableTreeMixin {
  String _expensiveAmount = '';
  String get getExpensiveAmount => _expensiveAmount;
  CategoryModel? _categoryModel;
  final _report = {};
  final List<Expense> _userExpenses = [];
  final Map<String, List<Expense>> _expensesAsMap = {};

  void setExpensiveAmount(String number) {
    if (number == '.' && _expensiveAmount.isEmpty) {
      return;
    }

    if (number == '.') {
      if (_expensiveAmount.contains('.')) {
        return;
      }
    }

    if (_expensiveAmount.contains('.')) {
      var ola = _expensiveAmount.split('.');
      if (ola[1].length == 2) {
        return;
      }
    }

    _expensiveAmount += number;
    notifyListeners();
  }

  void setSelectedCategoryForNewExpense(CategoryModel model) {
    _categoryModel = model;
    notifyListeners();
  }

  void backspace() {
    if (_expensiveAmount.isNotEmpty) {
      _expensiveAmount =
          _expensiveAmount.substring(0, _expensiveAmount.length - 1);
      notifyListeners();
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('expense', 0));
  }

  List<Expense> get userExpenses => [..._userExpenses];
  Map get expensesAsMap => {..._expensesAsMap};
  Map get report => {..._report};
  CategoryModel? get selectedCategoryModel => _categoryModel;
  bool get hasDot => _expensiveAmount.contains('.');

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
      return {
        'totalAmount': totalAmount,
        'categoryName': _categoryModel?.name,
        'categoryIcon': _categoryModel?.icon,
        'categoryID': _categoryModel?.id,
        'totalOfExpenses': expenses.length,
        'treading': treding,
        'tredingValue': tredingValue,
      };
    });
    notifyListeners();
    return true;
  }

  Future<bool> addExpenses() async {
    if (_expensiveAmount.isNotEmpty) {
      if (_expensiveAmount != '0') {
        double value = double.parse(_expensiveAmount);

        if (_categoryModel != null) {
          var expense = Expense(
            value: value,
            category: _categoryModel,
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

  void leaveNoTraces() {
    _categoryModel = null;
    _expensiveAmount = '';
  }

  var data = [
    {
      'monthID': 'lksmksknskgksg',
      'monthName': 'Janeiro',
      'year': '2022',
      'monthIndex': '1',
      'expenses': [
        {
          'day': '02',
          'expenses': [
            {
              'categoryId': '',
              'expenseValue': '',
              'expenseID': '',
              'dateSpent': '',
            },
            {
              'categoryId': '',
              'expenseValue': '',
              'expenseID': '',
              'dateSpent': '',
            },
          ]
        },
        {
          'day': '03',
          'expenses': [
            {
              'categoryId': '',
              'expenseValue': '',
              'expenseID': '',
              'dateSpent': '',
            },
            {
              'categoryId': '',
              'expenseValue': '',
              'expenseID': '',
              'dateSpent': '',
            },
          ]
        },
      ],
      'report': [
        {
          'categoryId': 'dknkfnsjknfjsnv',
          'report': {
            'categoryID': '',
            'totalAmount': 'f',
            'categoryName': 'k',
            'categoryIcon': 'l',
            'totalOfExpenses': 'f',
            'treading': 't',
            'tredingValue': 't',
          }
        }
      ]
    }
  ];
}

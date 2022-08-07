import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../utilities/colors.dart';

import '../models/category.dart';

class CategoryProvider with ChangeNotifier, DiagnosticableTreeMixin {
  //Variables
  int _selectedCategoryToEditIndex = 3000;

  int _selectedIconForNewCategoryIndex = 3000;
  int _selectedColorIndex = 3000;
  CategoryModel _categoryModelToBeEdited = CategoryModel();

  final _categoriesExpensises = [
    CategoryModel(name: 'Food', icon: FluentIcons.food_24_regular),
    CategoryModel(name: 'Shopping', icon: FluentIcons.cart_24_regular),
    CategoryModel(name: 'Car', icon: Icons.directions_car),
    CategoryModel(name: 'Bills', icon: FluentIcons.document_24_regular),
    CategoryModel(name: 'Drink', icon: FluentIcons.drink_wine_24_regular),
    CategoryModel(name: 'Cinema', icon: FluentIcons.tv_24_regular),
  ];

  CategoryModel bringTheCategory(String id) {
    return _categoriesExpensises.firstWhere((element) => element.id == id);
  }

  //Methods

  Future<bool> updateCategory(String name) async {
    _categoryModelToBeEdited.name = name;
    _categoriesExpensises.removeAt(_selectedCategoryToEditIndex);
    _categoriesExpensises.insert(
        _selectedCategoryToEditIndex, _categoryModelToBeEdited);
    notifyListeners();
    return true;
  }

  Future<bool> addNewCategory() async {
    _categoriesExpensises.add(_categoryModelToBeEdited);
    return true;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('category', 121));
  }

  //Getters
  CategoryModel get categoryModelToBeEdited => _categoryModelToBeEdited;
  int get selectedCategoryToEditIndex => _selectedCategoryToEditIndex;
  int get selectedColorIndex => _selectedColorIndex;

  List<CategoryModel> get categories => _categoriesExpensises;
  List<IconData> get myIcons => _myIcons;
  int get selectedIconForNewCategoryIndex => _selectedIconForNewCategoryIndex;

  Map<String, String> get categoriesNames {
    Map<String, String> ola = {};

    for (var l in _categoriesExpensises) {
      ola.update(l.id!, (value) => l.name);
    }
    return ola;
  }

  //Setters
  void selectedCategoryToEdit(
      {required CategoryModel categoryModel, required int index}) {
    _categoryModelToBeEdited = categoryModel;
    _selectedCategoryToEditIndex = index;

    shakeTheList(categoryModel);

    _selectedIconForNewCategoryIndex =
        _myIcons.indexWhere((element) => element == categoryModel.icon);
  }

  void shakeTheList(CategoryModel categoryModel) {
    var oi = _myIcons.indexWhere((element) => element == categoryModel.icon);
    var ola = _myIcons.elementAt(oi);
    _myIcons.removeAt(oi);
    _myIcons.insert(0, ola);
  }

  void setNewCategoryName(String name) {
    _categoryModelToBeEdited.name = name;
  }

  void setNewIconCategoryIndex(int index) {
    _selectedIconForNewCategoryIndex = index;
    _categoryModelToBeEdited.icon = _myIcons.elementAt(index);
    notifyListeners();
  }

  void setSelectedColorIndex(int index) {
    _selectedColorIndex = index;
    _categoryModelToBeEdited.color = categoryColors.elementAt(index);
    _categoryModelToBeEdited.colorIndex = index;
    notifyListeners();
  }

//TODO

  String _expensiveAmount = '';
  String get getExpensiveAmount => _expensiveAmount;
  void setExpensiveAmount(String number) {
    _expensiveAmount += number;
    notifyListeners();
  }

  void backspace() {
    if (_expensiveAmount.isNotEmpty) {
      _expensiveAmount =
          _expensiveAmount.substring(0, _expensiveAmount.length - 1);
      notifyListeners();
    }
  }

  //Icons
  final _myIcons = [
    Icons.directions_car,
    FluentIcons.cart_24_regular,
    FluentIcons.access_time_24_regular,
    FluentIcons.accessibility_24_regular,
    FluentIcons.add_24_regular,
    FluentIcons.airplane_24_regular,
    FluentIcons.animal_cat_24_regular,
    FluentIcons.apps_24_regular,
    FluentIcons.archive_24_regular,
    FluentIcons.arrow_trending_lines_24_regular,
    FluentIcons.backpack_24_regular,
    FluentIcons.balloon_24_regular,
    FluentIcons.battery_2_24_regular,
    FluentIcons.beach_24_regular,
    FluentIcons.beaker_24_regular,
    FluentIcons.bed_24_regular,
    FluentIcons.book_24_regular,
    FluentIcons.bowl_chopsticks_24_regular,
    FluentIcons.bowl_salad_24_regular,
    FluentIcons.box_24_regular,
    FluentIcons.braces_variable_24_regular,
    FluentIcons.briefcase_medical_24_regular,
    FluentIcons.building_24_regular,
    FluentIcons.call_24_regular,
    FluentIcons.camera_24_regular,
    FluentIcons.chart_multiple_24_regular,
    FluentIcons.chat_24_regular,
    FluentIcons.chess_20_regular,
    FluentIcons.cloud_24_regular,
    FluentIcons.color_24_regular,
    FluentIcons.cut_24_regular,
    FluentIcons.desktop_24_regular,
    FluentIcons.doctor_24_regular,
    FluentIcons.document_24_regular,
    FluentIcons.document_text_24_regular,
    FluentIcons.drink_beer_24_regular,
    FluentIcons.drink_coffee_24_regular,
    FluentIcons.drink_margarita_24_regular,
    FluentIcons.drink_to_go_24_regular,
    FluentIcons.drink_wine_24_regular,
    FluentIcons.dumbbell_24_regular,
    FluentIcons.earth_24_regular,
    FluentIcons.emoji_24_regular,
    FluentIcons.emoji_angry_24_regular,
    FluentIcons.emoji_laugh_24_regular,
    FluentIcons.engine_24_regular,
    FluentIcons.filmstrip_24_regular,
    FluentIcons.flashlight_24_regular,
    FluentIcons.folder_24_regular,
    FluentIcons.food_24_regular,
    FluentIcons.food_apple_24_regular,
    FluentIcons.food_cake_24_regular,
    FluentIcons.food_pizza_24_regular,
    FluentIcons.games_24_regular,
    FluentIcons.gas_24_regular,
    FluentIcons.gas_pump_24_regular,
    FluentIcons.gavel_24_regular,
    FluentIcons.glasses_24_regular,
    FluentIcons.globe_24_regular,
    FluentIcons.guardian_24_regular,
    FluentIcons.guitar_24_regular,
    FluentIcons.hat_graduation_24_regular,
    FluentIcons.headphones_24_regular,
    FluentIcons.heart_24_regular,
    FluentIcons.heart_pulse_24_regular,
    FluentIcons.home_24_regular,
    FluentIcons.key_multiple_20_regular,
    FluentIcons.key_24_regular,
    FluentIcons.keyboard_24_regular,
    FluentIcons.library_24_regular,
    FluentIcons.lightbulb_24_regular,
    FluentIcons.movies_and_tv_24_regular,
    FluentIcons.music_note_1_24_regular,
    FluentIcons.music_note_2_24_regular,
    FluentIcons.notebook_24_regular,
    FluentIcons.payment_24_regular,
    FluentIcons.people_24_regular,
    FluentIcons.phone_24_regular,
    FluentIcons.tv_24_regular,
    FluentIcons.wallet_credit_card_24_regular,
    FluentIcons.wrench_screwdriver_24_regular,
    //FluentIcons.xbox_console_24_regular,
    FluentIcons.xbox_controller_24_regular,
  ];
}

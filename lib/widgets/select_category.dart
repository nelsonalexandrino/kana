import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:kana/providers/category_provider.dart';

import '../utilities/colors.dart';

import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SelectCategory extends StatefulWidget {
  int? index;
  IconData? icon;
  bool newCategory;
  SelectCategory({this.index, this.icon, this.newCategory = false, super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColorNumbersAndIcons,
          shape: BoxShape.circle,
          border:
              context.watch<CategoryProvider>().selectedIndexForNewCategory ==
                      widget.index
                  ? Border.all(color: primaryColor, width: 2)
                  : null),
      child: IconButton(
        icon: Icon(widget.icon),
        splashRadius: 37.0,
        color: grey,
        iconSize: 30.0,
        onPressed: () {
          context
              .read<CategoryProvider>()
              .setNewCategoryIcon(widget.icon ?? FluentIcons.money_24_filled);

          context
              .read<CategoryProvider>()
              .thisIsTheIconSelectedForCategory(widget.index ?? 0);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:provider/provider.dart';

import '../utilities/colors.dart';
import '../providers/category_provider.dart';

// ignore: must_be_immutable
class SelectCategoryIcon extends StatefulWidget {
  int? index;
  IconData? icon;

  SelectCategoryIcon({
    this.index,
    this.icon,
    super.key,
  });

  @override
  State<SelectCategoryIcon> createState() => _SelectCategoryIconState();
}

class _SelectCategoryIconState extends State<SelectCategoryIcon> {
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

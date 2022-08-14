import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../utilities/defaults.dart';
import '../providers/category_provider.dart';

// ignore: must_be_immutable
class SelectCategoryIconButton extends StatefulWidget {
  int? index;
  IconData? icon;

  SelectCategoryIconButton({
    this.index,
    this.icon,
    super.key,
  });

  @override
  State<SelectCategoryIconButton> createState() =>
      _SelectCategoryIconButtonState();
}

class _SelectCategoryIconButtonState extends State<SelectCategoryIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColorNumbersAndIcons,
          shape: BoxShape.circle,
          border: context
                      .watch<CategoryProvider>()
                      .selectedIconForNewCategoryIndex ==
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
              .setNewIconCategoryIndex(widget.index!);
        },
      ),
    );
  }
}

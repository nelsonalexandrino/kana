import 'package:flutter/material.dart';

import '../utilities/colors.dart';

// ignore: must_be_immutable
class Indicator extends StatelessWidget {
  Indicator({super.key, this.isSelected});
  bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 10,
      width: isSelected! ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: isSelected! ? primaryColor : primaryColor.withOpacity(.4),
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }
}

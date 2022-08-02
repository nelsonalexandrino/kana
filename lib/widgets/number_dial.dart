import 'package:flutter/material.dart';
import 'package:kana/providers/category_provider.dart';
import 'package:kana/utilities/colors.dart';

import 'package:provider/provider.dart';

// ignore: must_be_immutable
class DialNumber extends StatefulWidget {
  Widget index;
  String number;

  DialNumber(this.index, this.number, {super.key});

  @override
  State<DialNumber> createState() => _DialNumberState();
}

class _DialNumberState extends State<DialNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColorNumbersAndIcons,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: widget.number.isNotEmpty
            ? () => context
                .read<CategoryProvider>()
                .setExpensiveAmount(widget.number)
            : () => context.read<CategoryProvider>().backspace(),
        iconSize: 40,
        alignment: Alignment.center,
        icon: widget.index,
        color: grey,
        splashRadius: 30,
      ),
    );
  }
}

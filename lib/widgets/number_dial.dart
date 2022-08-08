import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/expense_provider.dart';
import '../utilities/colors.dart';

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
                .read<ExpenseProvider>()
                .setExpensiveAmount(widget.number)
            : () => context.read<ExpenseProvider>().backspace(),
        iconSize: 40,
        alignment: Alignment.center,
        icon: widget.index,
        color: grey,
        splashRadius: 30,
      ),
    );
  }
}

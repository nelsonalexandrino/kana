import 'package:flutter/material.dart';
import 'package:kana/providers/category_provider.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../utilities/colors.dart';
import '../pages/modal_fit.dart';

import 'package:provider/provider.dart';

class AddCategoryButton extends StatefulWidget {
  final double spaceWeHave;
  final String name;
  final IconData icon;
  final GlobalKey<AnimatedListState>? globalKey;

  const AddCategoryButton(
      {this.spaceWeHave = 0,
      this.name = '',
      this.icon = Icons.money,
      this.globalKey,
      super.key});

  @override
  State<AddCategoryButton> createState() => _AddCategoryButtonState();
}

class _AddCategoryButtonState extends State<AddCategoryButton> {
  @override
  Widget build(BuildContext context) {
    double maxHeight = widget.spaceWeHave;
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showCupertinoModalBottomSheet<bool>(
                context: context,
                expand: true,
                builder: (context) => const ModalFit(isNewCategory: true),
              ).then((value) {
                context.read<CategoryProvider>().resetEverything();
                if (value ?? false) {
                  Future.delayed(const Duration(milliseconds: 400), () {
                    widget.globalKey!.currentState!.insertItem(
                        context.read<CategoryProvider>().categories.length - 1);
                  });
                }
              });
            },
            borderRadius: BorderRadius.circular(maxHeight / 2 + 5),
            child: Container(
              height: maxHeight / 2 + 4,
              width: maxHeight / 2 + 4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(2),
              child: Container(
                height: maxHeight / 2,
                width: maxHeight / 2,
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  widget.icon,
                  size: maxHeight / 4 > 24.0 ? 24 : maxHeight / 4,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            widget.name,
            style: TextStyle(
              fontSize: 12,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

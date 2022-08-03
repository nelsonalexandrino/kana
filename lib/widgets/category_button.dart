import 'package:flutter/material.dart';
import 'package:kana/models/category.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';

import '../pages/add_category.dart';
import '../utilities/colors.dart';
import '../providers/category_provider.dart';

// ignore: must_be_immutable
class CategoryButton extends StatefulWidget {
  final double spaceWeHave;
  final int index;
  final CategoryModel? category;

  const CategoryButton(
      {this.spaceWeHave = 0, this.index = 300, this.category, super.key});

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 400),
    vsync: this,
    value: 1.0,
    lowerBound: 1.0,
    upperBound: 1.3,
  );
  // late final Animation<double> _animation = CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.fastOutSlowIn,
  // );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  double eleventionShadow = 0.0;
  @override
  Widget build(BuildContext context) {
    var ola = context.read<CategoryProvider>().categories[widget.index];
    double maxHeight = widget.spaceWeHave;
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              context
                  .read<CategoryProvider>()
                  .setSelectedCategoryToEditIndex(widget.index);
            },
            onLongPress: () {
              // setState(() {
              //   eleventionShadow = 2.4;
              // });

              context.read<CategoryProvider>().resetSelectedCategory();

              context
                  .read<CategoryProvider>()
                  .setNewCategoryIcon(widget.category!.icon);
              context
                  .read<CategoryProvider>()
                  .setNewCategoryName(widget.category!.name);

              context
                  .read<CategoryProvider>()
                  .setSelectedCategoryToEditIndex(widget.index);

              showCupertinoModalBottomSheet(
                context: context,
                builder: (context) => const ModalFit(isNewCategory: false),
              ).then((value) {
                context.read<CategoryProvider>().resetEverything();
                context.read<CategoryProvider>().resetSelectedCategory();

                // if (value ?? false) {
                //   print('skjfksnf');
                //   _controller.forward().then((value) => _controller.reverse());
                // }

                Future.delayed(
                  const Duration(milliseconds: 400),
                  () {
                    if (value ?? false) {
                      _controller
                          .forward()
                          .then((value) => _controller.reverse());
                    }
                    // setState(() {
                    //   eleventionShadow = 0.0;
                    // });
                  },
                );
              });
            },
            child: ScaleTransition(
              scale: _controller,
              child: Container(
                height: maxHeight / 2 + 3,
                width: maxHeight / 2 + 3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context
                                .watch<CategoryProvider>()
                                .getSelectedCategoryIndex ==
                            widget.index
                        ? primaryColor
                        : Colors.transparent,
                  ),
                ),
                padding: const EdgeInsets.all(2),
                child: PhysicalModel(
                  color: eleventionShadow == 0.0 ? Colors.white : Colors.black,
                  shape: BoxShape.circle,
                  elevation: eleventionShadow,
                  child: Container(
                    height: maxHeight / 2,
                    width: maxHeight / 2,
                    decoration: BoxDecoration(
                      color: backgroundColorNumbersAndIcons,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      ola.icon,
                      size: maxHeight / 4 > 24.0 ? 24 : maxHeight / 4,
                      color: context
                                  .watch<CategoryProvider>()
                                  .getSelectedCategoryIndex ==
                              widget.index
                          ? primaryColor
                          : grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 3),
          Text(
            ola.name,
            style: TextStyle(
              fontSize: 12,
              color:
                  context.watch<CategoryProvider>().getSelectedCategoryIndex ==
                          widget.index
                      ? primaryColor
                      : const Color(0xff616657),
            ),
          ),
        ],
      ),
    );
  }
}

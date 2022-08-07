import 'dart:ui';

import 'package:flutter/material.dart';

import '../utilities/colors.dart';
import '../widgets/select_category.dart';
import '../utilities/custom_animation.dart';

class AddTodoPopupCard extends StatelessWidget {
  /// {@macro add_todo_popup_card}
  const AddTodoPopupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Hero(
            tag: 'helloow',
            createRectTween: (begin, end) {
              return CustomRectTween(begin: begin, end: end);
            },
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Nome da categoria',
                          border: InputBorder.none,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 190,
                        child: GridView.count(
                          crossAxisCount: 3,
                          scrollDirection: Axis.horizontal,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: List.generate(
                            40,
                            (index) => SelectCategoryIconButton(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Adicionar',
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

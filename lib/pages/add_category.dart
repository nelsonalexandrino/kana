import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category_provider.dart';

import '../utilities/colors.dart';
import '../widgets/select_category.dart';
import '../widgets/custom_snackbar_content.dart';

class ModalFit extends StatefulWidget {
  final bool isNewCategory;

  const ModalFit({
    this.isNewCategory = false,
    super.key,
  });

  @override
  State<ModalFit> createState() => _ModalFitState();
}

class _ModalFitState extends State<ModalFit> {
  late final TextEditingController _textCategoryController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (!widget.isNewCategory) {
      _textCategoryController = TextEditingController(
          text: context.read<CategoryProvider>().newCategoryName);
    } else {
      _textCategoryController = TextEditingController();
    }
    super.initState();
  }

  @override
  void dispose() {
    _textCategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(builder: (context, constraints) {
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 15.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: context
                                      .watch<CategoryProvider>()
                                      .newCategoryColor !=
                                  null
                              ? context
                                      .read<CategoryProvider>()
                                      .newCategoryColor ??
                                  primaryColor
                              : primaryColor,
                          width: 0,
                        ),
                      ),
                      child: PhysicalModel(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        child: Container(
                          decoration: BoxDecoration(
                            color: context
                                    .watch<CategoryProvider>()
                                    .newCategoryColor ??
                                backgroundColorNumbersAndIcons,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            context.watch<CategoryProvider>().newCategoryIcon,
                            size: 30,
                            color: context
                                        .watch<CategoryProvider>()
                                        .newCategoryColor !=
                                    null
                                ? Colors.white
                                : primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _textCategoryController,
                    decoration: InputDecoration(
                      hintText: 'Nome da nova categoria',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: primaryColor),
                      ),
                    ),
                    validator: (String? value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.characters.length < 3) {
                        return 'Nome de categoria inválido';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<CategoryProvider>()
                            .setNewCategoryName(value);
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: constraints.maxHeight * .4,
                child: GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  crossAxisCount: 5,
                  scrollDirection: Axis.horizontal,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(
                    context.read<CategoryProvider>().myIcons.length,
                    (index) => SelectCategory(
                      index: index,
                      newCategory: widget.isNewCategory,
                      icon: context
                          .read<CategoryProvider>()
                          .myIcons
                          .elementAt(index),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Escolha uma cor',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * .22,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: [
                      ...List.generate(categoryColors.length, (index) {
                        return SizedBox(
                          height: constraints.maxWidth / 7,
                          width: constraints.maxWidth / 7,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<CategoryProvider>()
                                  .setNewCategoryColor(index);
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 1,
                              backgroundColor: categoryColors.elementAt(index),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: null,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              LimitedBox(
                maxHeight: 50,
                child: Container(
                  margin: const EdgeInsets.only(top: 5),
                  height: constraints.maxHeight * .1,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: primaryColor),
                    onPressed: () {
                      if (widget.isNewCategory) {
                        if (_formKey.currentState!.validate()) {
                          if (context
                                  .read<CategoryProvider>()
                                  .newCategoryColor !=
                              null) {
                            context
                                .read<CategoryProvider>()
                                .addNewCategory()
                                .then((value) => Navigator.pop(context, value));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                behavior: SnackBarBehavior.floating,
                                content: CustomSnackBarContent(),
                              ),
                            );
                          }
                        }
                      } else {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<CategoryProvider>()
                              .updateCategory()
                              .then((value) => Navigator.pop(context, value));
                        }
                      }
                    },
                    child: Text(
                      widget.isNewCategory ? 'Adicionar' : 'Salvar alterações',
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

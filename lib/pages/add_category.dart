import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/category_provider.dart';

import '../utilities/defaults.dart';
import '../widgets/select_category.dart';

class AddEditCategory extends StatefulWidget {
  final bool isToUpdate;

  const AddEditCategory({
    this.isToUpdate = false,
    super.key,
  });

  @override
  State<AddEditCategory> createState() => _AddEditCategoryState();
}

class _AddEditCategoryState extends State<AddEditCategory> {
  late final TextEditingController _textCategoryController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.isToUpdate) {
      var name = context.read<CategoryProvider>().categoryModelToBeEdited.name;
      _textCategoryController = TextEditingController(text: name);
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
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: context
                                  .watch<CategoryProvider>()
                                  .categoryModelToBeEdited
                                  .color ??
                              backgroundColorNumbersAndIcons,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          context
                              .watch<CategoryProvider>()
                              .categoryModelToBeEdited
                              .icon,
                          size: 30,
                          color: context
                                      .watch<CategoryProvider>()
                                      .categoryModelToBeEdited
                                      .color !=
                                  null
                              ? Colors.white
                              : grey,
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
                        return 'Nome de categoria inv??lido';
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
                height: constraints.maxHeight * .39,
                child: GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  crossAxisCount: 5,
                  scrollDirection: Axis.horizontal,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(
                    context.read<CategoryProvider>().myIcons.length,
                    (index) => SelectCategoryIconButton(
                      index: index,
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
                      ...List.generate(
                        categoryColors.length,
                        (index) {
                          return Container(
                            height: constraints.maxWidth / 7,
                            width: constraints.maxWidth / 7,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                border: context
                                            .watch<CategoryProvider>()
                                            .selectedColorIndex ==
                                        index
                                    ? Border.all(
                                        color: categoryColors.elementAt(index),
                                        width: 3)
                                    : null,
                                shape: BoxShape.circle),
                            child: GestureDetector(
                              onTap: () => context
                                  .read<CategoryProvider>()
                                  .setSelectedColorIndex(index),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: categoryColors.elementAt(index),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
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
                      if (_formKey.currentState!.validate()) {
                        if (widget.isToUpdate) {
                          context
                              .read<CategoryProvider>()
                              .updateCategory(_textCategoryController.text)
                              .then((value) => Navigator.pop(context, value));
                        } else {
                          context
                              .read<CategoryProvider>()
                              .addNewCategory()
                              .then((value) => Navigator.pop(context, value));

                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   const SnackBar(
                          //     backgroundColor: Colors.transparent,
                          //     elevation: 0,
                          //     behavior: SnackBarBehavior.floating,
                          //     content: CustomSnackBarContent(),
                          //   ),
                          // );
                        }
                      }
                    },
                    child: Text(
                      widget.isToUpdate ? 'Salvar altera????es' : 'Adicionar',
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

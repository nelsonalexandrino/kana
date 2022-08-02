import 'package:flutter/material.dart';
import 'package:kana/providers/category_provider.dart';

import 'package:provider/provider.dart';

import '../utilities/colors.dart';
import '../widgets/select_category.dart';

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
    return Material(
      child: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return Column(
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
                        border: Border.all(color: primaryColor, width: 2),
                      ),
                      child: PhysicalModel(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        child: Container(
                          decoration: BoxDecoration(
                            color: backgroundColorNumbersAndIcons,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            context.watch<CategoryProvider>().newCategoryIcon,
                            size: 30,
                            color: primaryColor,
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
                height: constraints.maxHeight * .7,
                child: GridView.count(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  crossAxisCount: 9,
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
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: constraints.maxHeight * .05,
                child: TextButton(
                  onPressed: () {
                    if (widget.isNewCategory) {
                      if (_formKey.currentState!.validate()) {
                        context
                            .read<CategoryProvider>()
                            .addNewCategory()
                            .then((value) => Navigator.pop(context, value));
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
                    style: TextStyle(color: primaryColor, fontSize: 18),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}

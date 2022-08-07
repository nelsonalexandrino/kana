import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:provider/provider.dart';

import '../providers/expense_provider.dart';
import '../utilities/colors.dart';
import '../providers/category_provider.dart';
import '../widgets/add_category.dart';
import '../widgets/category_button.dart';
import '../widgets/number_dial.dart';

class AddExpensive extends StatefulWidget {
  static const String routeName = '/add_expensive';
  const AddExpensive({super.key});

  @override
  State<AddExpensive> createState() => _AddExpensiveState();
}

class _AddExpensiveState extends State<AddExpensive> {
// WidgetsBinding.instace.addPostFrameCallback((_){
//   method();
// });

  final GlobalKey<AnimatedListState> _myListkey =
      GlobalKey<AnimatedListState>();

  final Tween<Offset> _tween =
      Tween(begin: const Offset(1, 0), end: const Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Selecionar categoria',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: const Color(0xFF393939),
                fontSize: 22,
              ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              //context.read<CategoryProvider>().resetSelectedCategory();
              Navigator.pop(context);
            },
            icon: const Icon(FluentIcons.dismiss_20_filled,
                color: Color(0xFF393939)),
          )
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            var maxHeight = constraints.maxHeight;
            var categoryHeight = maxHeight * (13 / 100);

            return Column(
              children: [
                SizedBox(
                  height: categoryHeight,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 10,
                      top: categoryHeight / 8,
                    ),
                    child: Row(
                      children: [
                        AnimatedList(
                          key: _myListkey,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          initialItemCount: context
                              .read<CategoryProvider>()
                              .categories
                              .length,
                          itemBuilder: (context, index, animation) {
                            return SlideTransition(
                              key: Key(context
                                  .read<CategoryProvider>()
                                  .categories
                                  .elementAt(index)
                                  .id!),
                              position: animation.drive(_tween),
                              child: CategoryButton(
                                  spaceWeHave: categoryHeight,
                                  index: index,
                                  category: context
                                      .read<CategoryProvider>()
                                      .categories
                                      .elementAt(index)),
                            );
                          },
                        ),
                        AddCategoryButton(
                          spaceWeHave: categoryHeight,
                          icon: FluentIcons.add_24_filled,
                          name: 'Nova categoria',
                          globalKey: _myListkey,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: maxHeight * (13 / 100),
                  child: Text(
                    context
                            .watch<CategoryProvider>()
                            .getExpensiveAmount
                            .isNotEmpty
                        ? '${context.read<CategoryProvider>().getExpensiveAmount} MT'
                        : '',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: maxHeight * (59 / 100),
                  width:
                      constraints.maxWidth > 320 ? 320 : constraints.maxWidth,
                  child: Center(
                    child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(children: [
                            DialNumber(const Text('1'), '1'),
                            DialNumber(const Text('2'), '2'),
                            DialNumber(const Text('3'), '3'),
                          ]),
                          TableRow(children: [
                            DialNumber(const Text('4'), '4'),
                            DialNumber(const Text('5'), '5'),
                            DialNumber(const Text('6'), '6'),
                          ]),
                          TableRow(children: [
                            DialNumber(const Text('7'), '7'),
                            DialNumber(const Text('8'), '8'),
                            DialNumber(const Text('9'), '9'),
                          ]),
                          TableRow(children: [
                            DialNumber(const Text('.'), '.'),
                            DialNumber(const Text('0'), '0'),
                            DialNumber(
                                const Icon(
                                  FluentIcons.backspace_24_filled,
                                  size: 20,
                                ),
                                ''),
                          ]),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        context
                            .read<ExpenseProvider>()
                            .addExpenses()
                            .then((value) => {
                                  if (value)
                                    {
                                      // context
                                      //     .read<CategoryProvider>()
                                      //     .resetSelectedCategory(),
                                      // context
                                      //     .read<CategoryProvider>()
                                      //     .resetEverything(),
                                      // Navigator.pop(context, value)
                                    }
                                });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor, elevation: 0),
                      child: const Text('Adicionar'),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

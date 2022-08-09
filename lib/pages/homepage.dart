import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:intl/intl.dart';
import 'package:kana/pages/category_expense_details.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../providers/expense_provider.dart';
import '../widgets/custom_snackbar_content.dart';
import '../widgets/category_report_item.dart';
import '../pages/add_expensive.dart';
import '../utilities/colors.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home-page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/animations/lunch-time.json',
                  width: MediaQuery.of(context).size.width * .7),
              const SizedBox(height: 30),
              Consumer<ExpenseProvider>(
                builder: (context, provider, _) {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: provider.report.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      Map ola = provider.report.values.elementAt(index);

                      return OpenContainer(
                        closedBuilder: (context, action) => CategoryReportItem(
                          trending: ola['treading']
                              ? FluentIcons.arrow_trending_down_24_regular
                              : FluentIcons.arrow_trending_24_regular,
                          trendingTendency: '-2%',
                          moneySpent: NumberFormat.currency(
                                  locale: 'fr',
                                  decimalDigits: 2,
                                  symbol: 'MT',
                                  name: 'moz')
                              .format(
                            double.parse(ola['totalAmount'].toString()),
                          ),
                          categoryID: ola['categoryID'],
                          totalOfExpenses: ola['totalOfExpenses'],
                        ),
                        closedElevation: 0,
                        openElevation: 0,
                        openBuilder: (context, action) =>
                            const CategoryExpenseDetails(),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalBottomSheet(
            context: context,
            expand: true,
            builder: (context) => const AddExpensive(),
          );
        },
        backgroundColor: primaryColor,
        elevation: 2.0,
        child: const Icon(
          FluentIcons.add_24_filled,
          color: Colors.white,
        ),
      ),
      // OpenContainer(
      //   closedBuilder: (context, openContainer) {
      //     return Container(
      //       height: 60,
      //       width: 60,
      //       decoration: const BoxDecoration(shape: BoxShape.circle),
      //       child: const Icon(
      //         FluentIcons.add_28_filled,
      //         color: Colors.white,
      //       ),
      //     );
      //   },
      //   closedElevation: 2.0,
      //   closedColor: primaryColor,
      //   closedShape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(60.0)),
      //   ),
      //   openBuilder: (context, action) {
      //     return const AddExpensive();
      //   },
      // ),
    );
  }

  void newMethod(BuildContext context) {
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

import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../providers/expense_provider.dart';
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
  // final GlobalKey<AnimatedListState> _myListkey =
  //     GlobalKey<AnimatedListState>();

  // final Tween<Offset> _tween =
  //     Tween(begin: const Offset(0, 0.3), end: const Offset(0, 0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      return const CategoryReportItem(
                        categoryName: 'Shop',
                        trending: FluentIcons.arrow_trending_down_24_regular,
                        trendingTendency: '-2%',
                        moneySpent: '3 450 MT',
                        categoryIcon: FluentIcons.shopping_bag_24_regular,
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
          //Navigator.pushNamed(context, AddExpensive.routeName);
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
}

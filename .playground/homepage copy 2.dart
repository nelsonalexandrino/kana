import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:intl/intl.dart';
import 'package:kana/pages/expenses_months.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../providers/expense_provider.dart';
import '../widgets/custom_snackbar_content.dart';
import '../widgets/category_report_item.dart';
import '../pages/add_expensive.dart';
import '../utilities/defaults.dart';
import '../pages/category_expense_details.dart';
import '../widgets/homepage_custom_painter.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home-page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 12, vsync: this, initialIndex: 11);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ListView(
              //padding: EdgeInsets.zero,
              children: [
                Container(
                  height: constraints.maxHeight * .25,
                  decoration: BoxDecoration(
                    color: maybePrimary,
                    border: null,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).viewPadding.top + 50,
                          left: 15,
                          right: 5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Óla Nelson!',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Bom dia',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FluentIcons.alert_24_filled,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 20,
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              FluentIcons.money_24_regular,
                              color: Colors.white,
                              size: 55,
                            ),
                            const SizedBox(width: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Total de gastos',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '3 670 000 MT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 26,
                                      color: Colors.white,
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * .3,
                  child: LayoutBuilder(
                    builder: (context, secondConstraints) {
                      return Stack(
                        children: [
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: maybePrimary,
                                border: null,
                              ),
                              height: secondConstraints.maxHeight * .5,
                            ),
                          ),
                          Positioned(
                            top: secondConstraints.maxHeight * .5,
                            child: Container(
                              height: secondConstraints.maxHeight * .5,
                            ),
                          ),
                          Positioned(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                                bottom: 10,
                                top: 10,
                              ),
                              height: 260,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: [shadow],
                              ),
                              child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                primaryXAxis: CategoryAxis(
                                  majorGridLines:
                                      const MajorGridLines(width: 0),
                                  majorTickLines:
                                      const MajorTickLines(width: 0),
                                ),
                                primaryYAxis: NumericAxis(
                                    axisLine: const AxisLine(width: 0),
                                    labelFormat: '{value}%',
                                    majorTickLines:
                                        const MajorTickLines(size: 0),
                                    isVisible: false),
                                series: _getDefaultColumnSeries(),
                                //tooltipBehavior: _tooltipBehavior,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: [
                    Tab(
                        child: Text(
                      'Janeiro',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Fevereiro',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Março',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Abril',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Maio',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Junho',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Julho',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Agosto',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Setembro',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Outubro',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Novembro',
                      style: TextStyle(color: grey),
                    )),
                    Tab(
                        child: Text(
                      'Dezembro',
                      style: TextStyle(color: grey),
                    )),
                  ],
                ),
                Container(
                  color: grey.withOpacity(.1),
                  child: LimitedBox(
                    maxHeight: 50 * 10,
                    child: TabBarView(
                      controller: _tabController,
                      children: List.generate(
                        _tabController.length,
                        (index) => Consumer<ExpenseProvider>(
                          builder: (context, provider, _) {
                            return Container(
                              //color: Colors.black,
                              padding: const EdgeInsets.only(
                                  top: 20, left: 50, right: 15),
                              child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: provider.report.length,
                                  itemBuilder: (context, index) {
                                    Map ola =
                                        provider.report.values.elementAt(index);
                                    return OpenContainer(
                                      closedBuilder: (context, action) =>
                                          CategoryReportItem(
                                        trending: ola['treading']
                                            ? FluentIcons
                                                .arrow_trending_down_24_regular
                                            : FluentIcons
                                                .arrow_trending_24_regular,
                                        trendingTendency: '-2%',
                                        moneySpent: NumberFormat.currency(
                                                locale: 'fr',
                                                decimalDigits: 2,
                                                symbol: 'MT',
                                                name: 'moz')
                                            .format(
                                          double.parse(
                                              ola['totalAmount'].toString()),
                                        ),
                                        categoryID: ola['categoryID'],
                                        totalOfExpenses: ola['totalOfExpenses'],
                                      ),
                                      closedElevation: 0,
                                      openElevation: 0,
                                      openBuilder: (context, action) =>
                                          CategoryExpenseDetails(),
                                    );
                                  }

                                  // Container(
                                  //   height: 50,
                                  //   color: Color(
                                  //           (math.Random().nextDouble() * 0xFFFFFF)
                                  //               .toInt())
                                  //       .withOpacity(1.0),
                                  //   child: const Icon(
                                  //     FluentIcons.access_time_20_filled,
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                  ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
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

  List<ColumnSeries<ChartSampleData, String>> _getDefaultColumnSeries() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        dataSource: <ChartSampleData>[
          //ChartSampleData(x: 'Jan', y: 0.541),
          ChartSampleData(x: 'Fev', y: 0.818),
          ChartSampleData(x: 'Mar', y: 1.51),
          ChartSampleData(x: 'Abr', y: 1.302),
          ChartSampleData(x: 'Mai', y: 2.017),
          ChartSampleData(x: 'Jun', y: 1.583),
          ChartSampleData(x: 'Jul', y: 1.283),
          ChartSampleData(x: 'Ago', y: 1.683),
          // ChartSampleData(x: 'Set', y: 1.683),
          // ChartSampleData(x: 'Out', y: 1.683),
          // ChartSampleData(x: 'Nov', y: 1.683),
          // ChartSampleData(x: 'Dez', y: 1.683),
        ],
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        dataLabelSettings: const DataLabelSettings(
          isVisible: false,
          textStyle: TextStyle(fontSize: 10),
        ),
      )
    ];
  }
}

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

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
    _tabController = TabController(length: 12, vsync: this);
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return DefaultTabController(
            length: 12,
            child: SingleChildScrollView(
              child: SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: Stack(
                  children: [
                    Container(
                      color: maybePrimary,
                      height: constraints.maxHeight * .4,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).viewPadding.top + 50,
                              left: 15,
                              right: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      '??la Nelson!',
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
                              vertical: 30,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                    Positioned(
                      top: constraints.maxHeight * .28,
                      left: 0,
                      right: 0,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 10,
                          top: 10,
                        ),
                        height: 260,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [shadow]),
                        child: SfCartesianChart(
                          plotAreaBorderWidth: 0,
                          primaryXAxis: CategoryAxis(
                            majorGridLines: const MajorGridLines(width: 0),
                            majorTickLines: const MajorTickLines(width: 0),
                          ),
                          primaryYAxis: NumericAxis(
                              axisLine: const AxisLine(width: 0),
                              labelFormat: '{value}%',
                              majorTickLines: const MajorTickLines(size: 0),
                              isVisible: false),
                          series: _getDefaultColumnSeries(),
                          //tooltipBehavior: _tooltipBehavior,
                        ),
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight * .28 + 300,
                      left: 0,
                      right: 0,
                      child: Container(
                        //color: Colors.red,
                        height: constraints.maxHeight,
                        child: Column(children: [
                          TabBar(
                            //controller: _tabController,
                            //labelPadding: EdgeInsets.symmetric(),
                            isScrollable: true,
                            //labelStyle: TextStyle(color: Colors.white),
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
                                'Mar??o',
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
                          Expanded(
                            //height: 200,
                            child: TabBarView(
                              //controller: _tabController,
                              children: List.generate(
                                12,
                                (index) => ListView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  children: [
                                    Container(
                                      height: 50,
                                      color: Colors.black,
                                      child: const Icon(
                                        FluentIcons.access_time_20_filled,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      color: Colors.yellow,
                                      child: const Icon(
                                        FluentIcons.accessibility_20_regular,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      color: Colors.brown,
                                      height: 50,
                                      child: const Icon(
                                        FluentIcons.caret_down_12_filled,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                        color: Colors.green,
                                        height: 50,
                                        child: const Icon(
                                          FluentIcons.key_16_filled,
                                          color: Colors.white,
                                        )),
                                    Container(
                                      color: Colors.blue,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.laptop_16_filled),
                                    ),
                                    Container(
                                      color: Colors.cyan,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.open_16_filled),
                                    ),
                                    Container(
                                      color: Colors.teal,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.qr_code_20_filled),
                                    ),
                                    Container(
                                      color: Colors.deepOrange,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.walkie_talkie_20_filled),
                                    ),
                                    Container(
                                      color: Colors.pink,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.earth_16_filled),
                                    ),
                                    Container(
                                      color: Colors.purple,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.radar_20_filled),
                                    ),
                                    Container(
                                      color: Colors.lime,
                                      height: 50,
                                      child:
                                          const Icon(FluentIcons.tab_16_filled),
                                    ),
                                    Container(
                                      color: Colors.grey,
                                      height: 50,
                                      child: const Icon(
                                          FluentIcons.padding_down_20_filled),
                                    ),
                                  ],
                                ),
                              ).toList(),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),

      // CustomPaint(
      //   painter: HomePageCustomPainter(),
      //   child: LayoutBuilder(x
      //     builder: (context, constraints) {
      //       print('${constraints.maxHeight} humm');
      //       return Column(
      //         children: [
      //           Container(
      //             padding: EdgeInsets.only(
      //               top: MediaQuery.of(context).viewPadding.top + 50,
      //               left: 15,
      //               right: 15,
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: const [
      //                     Text(
      //                       '??la Nelson!',
      //                       style: TextStyle(
      //                           fontSize: 23,
      //                           fontWeight: FontWeight.w500,
      //                           color: Colors.white),
      //                     ),
      //                     Text(
      //                       'Bom dia',
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.w300,
      //                           fontSize: 15),
      //                     ),
      //                   ],
      //                 ),
      //                 IconButton(
      //                   onPressed: () {},
      //                   icon: const Icon(
      //                     FluentIcons.alert_24_filled,
      //                     color: Colors.white,
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           Container(
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 15,
      //               vertical: 30,
      //             ),
      //             child: Row(
      //               children: [
      //                 const Icon(
      //                   FluentIcons.money_24_regular,
      //                   color: Colors.white,
      //                   size: 55,
      //                 ),
      //                 const SizedBox(width: 10),
      //                 Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: const [
      //                       Text(
      //                         'Total de gastos',
      //                         style: TextStyle(
      //                             fontWeight: FontWeight.w300,
      //                             color: Colors.white),
      //                       ),
      //                       Text(
      //                         '3 670 000 MT',
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.w600,
      //                           fontSize: 26,
      //                           color: Colors.white,
      //                         ),
      //                       ),
      //                     ]),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             margin: const EdgeInsets.only(
      //                 left: 10, right: 10, bottom: 10, top: 10

      //                 // constraints.maxHeight * .2 -
      //                 //     MediaQuery.of(context).viewPadding.top -
      //                 //     30,
      //                 ),
      //             padding: const EdgeInsets.all(10),
      //             decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(7),
      //                 boxShadow: [shadow]),
      //             child: SfCartesianChart(
      //               plotAreaBorderWidth: 0,
      //               primaryXAxis: CategoryAxis(
      //                 majorGridLines: const MajorGridLines(width: 0),
      //                 majorTickLines: const MajorTickLines(width: 0),
      //               ),
      //               primaryYAxis: NumericAxis(
      //                   axisLine: const AxisLine(width: 0),
      //                   labelFormat: '{value}%',
      //                   majorTickLines: const MajorTickLines(size: 0),
      //                   isVisible: false),
      //               series: _getDefaultColumnSeries(),
      //               //tooltipBehavior: _tooltipBehavior,
      //             ),
      //           ),
      //           const SizedBox(height: 30),
      //           const SizedBox(height: 30),
      //           Consumer<ExpenseProvider>(
      //             builder: (context, provider, _) {
      //               return ListView.builder(
      //                 physics: const NeverScrollableScrollPhysics(),
      //                 shrinkWrap: true,
      //                 itemCount: provider.report.length,
      //                 itemBuilder: (
      //                   context,
      //                   index,
      //                 ) {
      //                   Map ola = provider.report.values.elementAt(index);

      //                   return OpenContainer(
      //                     closedBuilder: (context, action) =>
      //                         CategoryReportItem(
      //                       trending: ola['treading']
      //                           ? FluentIcons.arrow_trending_down_24_regular
      //                           : FluentIcons.arrow_trending_24_regular,
      //                       trendingTendency: '-2%',
      //                       moneySpent: NumberFormat.currency(
      //                               locale: 'fr',
      //                               decimalDigits: 2,
      //                               symbol: 'MT',
      //                               name: 'moz')
      //                           .format(
      //                         double.parse(ola['totalAmount'].toString()),
      //                       ),
      //                       categoryID: ola['categoryID'],
      //                       totalOfExpenses: ola['totalOfExpenses'],
      //                     ),
      //                     closedElevation: 0,
      //                     openElevation: 0,
      //                     openBuilder: (context, action) =>
      //                         CategoryExpenseDetails(),
      //                   );
      //                 },
      //               );
      //             },
      //           ),
      //           // Lottie.asset('assets/animations/lunch-time.json',
      //           //     width: MediaQuery.of(context).size.width * .5),
      //         ],
      //       );
      //     },
      //   ),
      // ),
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

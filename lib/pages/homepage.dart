import 'package:flutter/material.dart';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../widgets/custom_snackbar_content.dart';
import '../pages/add_expensive.dart';
import '../utilities/defaults.dart';
import '../pages/category_expense_details.dart';
import '../widgets/sliver_months.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home-page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;

  bool _hideThis = false;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 12, vsync: this, initialIndex: 1);
    _scrollController = ScrollController()
      ..addListener(
        () => _isAppBarExpanded
            ? setState(() {
                _hideThis = true;
              })
            : setState(
                () {
                  _hideThis = false;
                },
              ),
      );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (220 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          var aspectRatio = MediaQuery.of(context).size.aspectRatio;
          var deviceHeight = MediaQuery.of(context).size.height;

          final double headlineBaseFontSize = 50 * (1 - aspectRatio);
          final double subtitleBaseFontSize = 28 * (1 - aspectRatio);
          return CustomScrollView(
            controller: _scrollController,
            shrinkWrap: true,
            slivers: [
              SliverAppBar(
                backgroundColor: maybePrimary,
                //toolbarHeight: 0,

                elevation: 0,
                //collapsedHeight: 50,
                expandedHeight: constraints.maxHeight * .5,
                stretch: true,
                onStretchTrigger: () async {
                  print('kkkfdkfkdfd');
                },
                //floating: true,
                pinned: true,

                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: _hideThis ? const Text('Seus Gastos') : null,
                  collapseMode: CollapseMode.pin,
                  background: LayoutBuilder(builder: (context, constraints) {
                    return ListView(
                      shrinkWrap: false,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 5,
                          ),
                          height: deviceHeight < 900
                              ? constraints.maxHeight * .2
                              : constraints.maxHeight * .15,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Óla Nelson!',
                                    style: TextStyle(
                                      fontSize: headlineBaseFontSize,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    DateTime.now().hour < 12
                                        ? 'Bom dia'
                                        : DateTime.now().hour < 18
                                            ? 'Boa tarde'
                                            : 'Boa noite',
                                    style: TextStyle(
                                      fontSize: subtitleBaseFontSize,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white,
                                    ),
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
                        // if (deviceHeight > 900)
                        //   Container(
                        //     //color: Colors.black,
                        //     height: 15,
                        //   ),
                        Container(
                          //color: Colors.green,
                          height: constraints.maxHeight * .16,
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 5,
                            bottom: deviceHeight > 900 ? 10 : 0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                FluentIcons.money_24_regular,
                                color: Colors.white,
                                size: deviceHeight > 900 ? 50 : 45,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total de gastos',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white,
                                          fontSize: subtitleBaseFontSize),
                                    ),
                                    Text(
                                      '3 670 000 MT',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: deviceHeight > 900
                                            ? headlineBaseFontSize
                                            : headlineBaseFontSize - 3,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight -
                              (constraints.maxHeight * .16) -
                              (deviceHeight < 900
                                  ? constraints.maxHeight * .2
                                  : constraints.maxHeight * .15),
                          child: LayoutBuilder(
                              builder: (context, secondConstraints) {
                            return Stack(
                              children: [
                                Positioned(
                                  //top: 130,
                                  left: 0,
                                  right: 0,
                                  bottom: 15,
                                  child: Container(
                                    //height: secondConstraints.maxHeight * .5,
                                    height: secondConstraints.maxHeight / 2,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      //border: Border.all(color: Colors.pink),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: deviceHeight < 900 ? 15 : 50,
                                  left: 11,
                                  right: 11,
                                  top: 5,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                      bottom: 10,
                                      top: 10,
                                    ),
                                    height: deviceHeight > 900 ? 260 : 140,
                                    padding: EdgeInsets.all(
                                        deviceHeight > 900 ? 10 : 0),
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
                          }),
                        ),
                        // Container(
                        //   height: 200,
                        //   decoration:
                        //       const BoxDecoration(color: Colors.white, border: null),
                        // )
                      ],
                    );
                  }),
                ),
              ),
              SliverPersistentHeader(
                delegate: SliverMonths(
                    tabController: _tabController,
                    scrollController: _scrollController),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      key: ValueKey(index),
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 20, left: 16),
                          child: Text(
                            yearMonths.elementAt(index),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Center(
                                child: ListView(
                                  padding: const EdgeInsets.all(8.0),
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: [
                                    const Center(child: Text('Terça')),
                                    const Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 10,
                                      width: 10,
                                      margin: const EdgeInsets.only(top: 6),
                                      decoration: BoxDecoration(
                                        color: maybePrimary,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    ...List.generate(
                                      17,
                                      (index) => Center(
                                        child: Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          height: 15,
                                          width: 3,
                                          decoration: BoxDecoration(
                                            color: grey.withOpacity(.6),
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                margin: const EdgeInsets.only(right: 15),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Column(children: [
                                    ...List.generate(
                                      7,
                                      (index) => Container(
                                        height: 60,
                                        color: Colors.amber,
                                        // color: Color((Random().nextDouble() *
                                        //             0xFFFFFF)
                                        //         .toInt())
                                        //     .withOpacity(1.0),
                                      ),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  //addAutomaticKeepAlives: true,
                  childCount: yearMonths.length,
                ),
              ),
            ],
          );
        },
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
      //         FluentIcons.add_28_fi lled,
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

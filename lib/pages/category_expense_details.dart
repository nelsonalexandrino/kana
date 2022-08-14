import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:kana/utilities/defaults.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

//import '../utilities/colors.dart';

class CategoryExpenseDetails extends StatefulWidget {
  const CategoryExpenseDetails({super.key});

  @override
  State<CategoryExpenseDetails> createState() => _CategoryExpenseDetailsState();
}

class _CategoryExpenseDetailsState extends State<CategoryExpenseDetails> {
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior =
        TooltipBehavior(enable: true, format: 'point.x : point.ym');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'Este mês',
            style: TextStyle(color: grey, fontSize: 16),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(FluentIcons.dismiss_24_regular),
            color: grey,
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 110,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [shadow],
            ),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: SfCircularChart(
                    margin: EdgeInsets.zero,
                    key: GlobalKey(),
                    series: _getRadialBarDefaultSeries(),
                    tooltipBehavior: _tooltipBehavior,
                    annotations: <CircularChartAnnotation>[
                      CircularChartAnnotation(
                        angle: 0,
                        radius: '0%',
                        height: '90%',
                        width: '90%',
                        widget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '65%',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Gastos',
                                style: TextStyle(fontSize: 10),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Limite'),
                      Text(
                        '100 000 MT',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Gastos'),
                      Text(
                        '65 000 MT',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Remanescente'),
                      Text(
                        '35 000 MT',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  /// Returns default radial series.
  List<RadialBarSeries<ChartSampleData, String>> _getRadialBarDefaultSeries() {
    return <RadialBarSeries<ChartSampleData, String>>[
      RadialBarSeries<ChartSampleData, String>(
        maximumValue: 15,
        animationDuration: 4000,
        dataLabelSettings: const DataLabelSettings(
          textStyle: TextStyle(fontSize: 10.0),
        ),
        dataSource: <ChartSampleData>[
          ChartSampleData(
            x: 'Tom',
            y: 7.5,
            text: '100%',
            pointColor: primaryColor,
          ),
        ],
        cornerStyle: CornerStyle.bothFlat,
        gap: '20%',
        radius: '85%',
        innerRadius: '70%',
        xValueMapper: (ChartSampleData data, _) => data.x as String,
        yValueMapper: (ChartSampleData data, _) => data.y,
        //pointRadiusMapper: (ChartSampleData data, _) => data.text,
        pointColorMapper: (ChartSampleData data, _) => data.pointColor,
        //dataLabelMapper: (ChartSampleData data, _) => data.x as String,
      )
    ];
  }
}

///Chart sample data
class ChartSampleData {
  /// Holds the datapoint values like x, y, etc.,
  ChartSampleData(
      {this.x,
      this.y,
      this.xValue,
      this.yValue,
      this.secondSeriesYValue,
      this.thirdSeriesYValue,
      this.pointColor,
      this.size,
      this.text,
      this.open,
      this.close,
      this.low,
      this.high,
      this.volume});

  /// Holds x value of the datapoint
  final dynamic x;

  /// Holds y value of the datapoint
  final num? y;

  /// Holds x value of the datapoint
  final dynamic xValue;

  /// Holds y value of the datapoint
  final num? yValue;

  /// Holds y value of the datapoint(for 2nd series)
  final num? secondSeriesYValue;

  /// Holds y value of the datapoint(for 3nd series)
  final num? thirdSeriesYValue;

  /// Holds point color of the datapoint
  final Color? pointColor;

  /// Holds size of the datapoint
  final num? size;

  /// Holds datalabel/text value mapper of the datapoint
  final String? text;

  /// Holds open value of the datapoint
  final num? open;

  /// Holds close value of the datapoint
  final num? close;

  /// Holds low value of the datapoint
  final num? low;

  /// Holds high value of the datapoint
  final num? high;

  /// Holds open value of the datapoint
  final num? volume;
}

/// Chart Sales Data
class SalesData {
  /// Holds the datapoint values like x, y, etc.,
  SalesData(this.x, this.y, [this.date, this.color]);

  /// X value of the data point
  final dynamic x;

  /// y value of the data point
  final dynamic y;

  /// color value of the data point
  final Color? color;

  /// Date time value of the data point
  final DateTime? date;
}

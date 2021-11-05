import 'dart:math';
import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

const List<Color> ListOdrderedChartColors = [
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
  AppColors.solidBlue,
  AppColors.solidGreen,
  AppColors.solidRed,
  AppColors.solidViolet,
  AppColors.solidYellow,
  Color(0xff0060d1),
  Color(0xff149d82),
  Color(0xff269c47),
  Color(0xff2980b9),
  Color(0xff7f8c8d),
  Color(0xff8e44ad),
  Color(0xff95a5a6),
  Color(0xffa0aaff),
  Color(0xffb62121),
  Color(0xffbdc3c7),
  Color(0xffcc5614),
  Color(0xfffc5d5d),
  Color(0xffff7f23),
];

class PieOutsideLabelChart extends StatelessWidget {
  final List<charts.Series<dynamic, num>> seriesList;
  final bool animate;

  PieOutsideLabelChart(this.seriesList, {this.animate = false});

  /// Creates a [PieChart] with sample data and no transition.
  factory PieOutsideLabelChart.withSampleData() {
    return new PieOutsideLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  factory PieOutsideLabelChart.withRandomData() {
    return new PieOutsideLabelChart(_createRandomData());
  }

  /// Create random data.
  static List<charts.Series<LinearSales, int>> _createRandomData() {
    final random = new Random();

    final data = [
      new LinearSales(0, random.nextInt(100)),
      new LinearSales(1, random.nextInt(100)),
      new LinearSales(2, random.nextInt(100)),
      new LinearSales(3, random.nextInt(100)),
    ];
    var colors =
        ListOdrderedChartColors.map((e) => charts.ColorUtil.fromDartColor(e))
            .toList();
    return [
      new charts.Series<LinearSales, int>(
          id: 'Sales',
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: data,
          colorFn: (_, int? index) => colors[index!],
          labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}',
          outsideLabelStyleAccessorFn: (LinearSales row, _) =>
              charts.TextStyleSpec(
                color:
                    charts.ColorUtil.fromDartColor(MonitorThemeData().neutral1),
              ))
    ];
  }
  // EXCLUDE_FROM_GALLERY_DOCS_END

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: new charts.PieChart<Object>(
        seriesList,
        animate: animate,
        defaultRenderer: new charts.ArcRendererConfig(
            arcWidth: 25,
            arcRendererDecorators: [
              new charts.ArcLabelDecorator(
                  labelPosition: charts.ArcLabelPosition.outside)
            ]),
        behaviors: [
          new charts.DatumLegend(
              position: charts.BehaviorPosition.bottom,
              outsideJustification: charts.OutsideJustification.startDrawArea),
        ],
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 100),
      new LinearSales(1, 75),
      new LinearSales(2, 25),
      new LinearSales(3, 5),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}',
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}

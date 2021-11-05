import 'dart:math';
// EXCLUDE_FROM_GALLERY_DOCS_END
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:charts_common/common.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class VerticalBarLabelChart<T> extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;

  VerticalBarLabelChart(this.seriesList, {this.animate = false});

  /// Creates a [BarChart] with sample data and no transition.
  factory VerticalBarLabelChart.withSampleData() {
    return new VerticalBarLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: new charts.BarChart(
        seriesList,
        animate: animate,
        barRendererDecorator: new charts.BarLabelDecorator<String>(
            labelPosition: charts.BarLabelPosition.outside,
            outsideLabelStyleSpec: charts.TextStyleSpec(
                color: charts.ColorUtil.fromDartColor(
                    MonitorThemeData().primaryActive))),
        secondaryMeasureAxis:
            charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
        primaryMeasureAxis:
            charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
        domainAxis: charts.OrdinalAxisSpec(
          renderSpec: charts.SmallTickRendererSpec(
            tickLengthPx: 0,
            labelStyle: charts.TextStyleSpec(
                fontSize: 12,
                lineHeight: 1.6,
                color:
                    charts.ColorUtil.fromDartColor(MonitorThemeData().neutral1),
                fontFamily: 'Fonts_AvertaStdCy'),
            lineStyle: charts.LineStyleSpec(
              color: charts.ColorUtil.fromDartColor(
                  MonitorThemeData().primaryActive),
            ),
          ),
        ),
        behaviors: [
          charts.SeriesLegend(),
        ],
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales sales, _) =>
              '\$${sales.sales.toString()}')
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

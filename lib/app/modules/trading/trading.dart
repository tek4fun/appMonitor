import 'package:app_monitors/app/widgets/charts/pie_chart.dart';
import 'package:app_monitors/app/widgets/container_box.dart';
import 'package:app_monitors/app/widgets/widget_table.dart';
import 'package:flutter/material.dart';

class TradingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ContainerBox(title: "Giao dịch theo chi nhánh", widgets: [
                PieOutsideLabelChart.withRandomData(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: WidgetTable.withSampleData(),
                )
              ]),
              ContainerBox(title: "Giao dịch theo kênh", widgets: [
                PieOutsideLabelChart.withRandomData(),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: WidgetTable.withSampleData(),
                )
              ]),
              ContainerBox(title: "Tổng TT", widgets: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: WidgetTable.withSampleData(),
                )
              ]),
              ContainerBox(title: "Top Broker", widgets: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: WidgetTable.withSampleData(),
                )
              ]),
              //VerticalBarLabelChart.withSampleData(),
            ],
          ),
        ],
      ),
    );
  }
}

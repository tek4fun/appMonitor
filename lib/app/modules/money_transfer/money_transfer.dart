import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/widgets/charts/bar_chart.dart';
import 'package:app_monitors/app/widgets/container_box.dart';
import 'package:app_monitors/app/widgets/widget_table.dart';
import 'package:flutter/material.dart';

class MoneyTransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ContainerBox(title: "Tài khoản mở theo tháng", widgets: [
                  VerticalBarLabelChart.withSampleData(),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        NumberBox(
                            title: "Tài khoản mở theo ngày", number: 1234),
                        NumberBox(title: "Tài khoản giao dịch", number: 4567),
                      ],
                    ),
                  )
                ]),
                ContainerBox(title: "Chuyển tiền", widgets: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: WidgetTable.withSampleData(),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumberBox extends StatelessWidget {
  final String title;
  final int number;

  NumberBox({required this.title, this.number = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Column(children: [
        Text(
          title,
          style: AppTextStyles.averSemibold12(),
        ),
        Expanded(
          child: Center(
            child: Text(
              number.toString(),
              style: AppTextStyles.numberSemibold32(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]),
    );
  }
}

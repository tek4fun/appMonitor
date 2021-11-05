import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  final List<Widget> widgets;
  final String title;

  ContainerBox({required this.title, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child:
                  Text(title, style: AppTextStyles.avetarSemibold20Neutral1()),
            ),
          ),
          ...widgets,
        ],
      ),
    );
  }
}

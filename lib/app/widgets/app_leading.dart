import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:flutter/material.dart';

class AppLeading extends StatefulWidget {
  final void Function()? onPressed;

  AppLeading({Key? key, this.onPressed}) : super(key: key);

  @override
  _AppLeadingState createState() => _AppLeadingState();
}

class _AppLeadingState extends State<AppLeading> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Image.asset(
          AppPath.arrowLeft,
          width: 24,
          height: 24,
          color: MonitorThemeData().neutral1,
        ),
        onPressed: widget.onPressed);
  }
}

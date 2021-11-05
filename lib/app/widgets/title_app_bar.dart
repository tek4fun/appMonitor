import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:flutter/material.dart';

Text titleAppBar(String text, {Color? color}) {
  TextStyle style = AppTextStyles.avertaRegular(
      color: MonitorThemeData().neutral1,
      fontSize: 16.0,
      fontWeight: FontWeight.w600);
  if (color != null) {
    style = style.copyWith(color: color);
  }
  return Text(text, style: style);
}

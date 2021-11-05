import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle _avertaBase() {
    return TextStyle(fontFamily: 'Fonts_AvertaStdCy');
  }

  static TextStyle _ibmBase() {
    return TextStyle(fontFamily: 'IBM_Plex_Sans');
  }

  static TextStyle avertaNormal({
    Color? color,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return _avertaBase().copyWith(
        color: color ?? MonitorThemeData().neutral1,
        fontSize: fontSize,
        fontWeight: fontWeight);
  }

  static TextStyle ibmNormal({
    Color? color,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return _ibmBase().copyWith(
        color: color ?? MonitorThemeData().neutral1,
        fontSize: fontSize,
        fontWeight: fontWeight);
  }
}

class Texts {
  static Widget avertaNormal(
    String text, {
    Color? color,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    TextAlign? textAlign,
    Color? backgroundColor,
  }) {
    return Container(
      color: backgroundColor,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyles.avertaNormal(
            color: color ?? MonitorThemeData().neutral1,
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }

  static Widget ibmNormal(
    String text, {
    Color? color,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.w400,
    TextAlign? textAlign,
    Color? backgroundColor,
  }) {
    return Container(
      color: backgroundColor,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyles.ibmNormal(
            color: color ?? MonitorThemeData().neutral1,
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }
}

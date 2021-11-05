import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle normal({Color? color}) {
    return TextStyle(
        color: color ?? MonitorThemeData().whiteColor, fontSize: 14);
  }

  static TextStyle normalMedium({Color? color}) {
    return TextStyle(
        color: color ?? MonitorThemeData().whiteColor,
        fontSize: 14,
        fontWeight: FontWeight.w600);
  }

  static TextStyle small({Color? color = AppColors.black}) {
    return TextStyle(color: color, fontSize: 13);
  }

  static TextStyle lightTheme12CaptionRegularNeutral = TextStyle(
    color: MonitorThemeData().neutral2,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme12BodyRegularInk2 = TextStyle(
    color: MonitorThemeData().neutral2,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme12CaptionRegularError = TextStyle(
    color: MonitorThemeData().solidRed,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme14BodyRegularWhite = TextStyle(
    color: MonitorThemeData().whiteColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme14BodyRegularNeutral2 = TextStyle(
    color: MonitorThemeData().neutral2,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme16CaptionRegularError = TextStyle(
    color: MonitorThemeData().solidRed,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static TextStyle lightTheme16BodyRegularInk1 = TextStyle(
    color: MonitorThemeData().neutral1,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme16BodyRegularInk2 = TextStyle(
    color: MonitorThemeData().neutral2,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme16BodyRegularNeutral3 = TextStyle(
    fontFamily: 'Averta Std CY',
    color: MonitorThemeData().neutral3,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle lightTheme16BodyRegularNeutral1 = TextStyle(
    color: MonitorThemeData().neutral1,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle semiBold16HeadlineNeutral1 = TextStyle(
    fontFamily: 'Averta Std CY',
    color: MonitorThemeData().neutral1,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static TextStyle semibold16({
    Color? color = Colors.white,
  }) {
    return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600);
  }

  static TextStyle primaryRegular14({Color? color}) {
    return TextStyle(
        color: color ?? MonitorThemeData().primaryActive,
        fontSize: 14,
        fontWeight: FontWeight.w400);
  }

  static TextStyle primaryRegular14FontW(
      {Color? color, required FontWeight fontWeight}) {
    return TextStyle(
        color: color ?? MonitorThemeData().primaryActive,
        fontSize: 14,
        fontWeight: fontWeight);
  }

  static TextStyle primaryAvetaFontW(
      {Color? color,
      required FontWeight fontWeight,
      required double fontSize,
      FontStyle fontStyle = FontStyle.normal}) {
    return TextStyle(
        color: color ?? MonitorThemeData().primaryActive,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle);
  }

  static TextStyle primaryImpFontW(
      {Color? color,
      required FontWeight fontWeight,
      String fontFamily = 'IBM_Plex_Sans',
      required double fontSize}) {
    return TextStyle(
        color: color ?? MonitorThemeData().primaryActive,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily);
  }

  static TextStyle aveTaRegular12({Color? color}) {
    return TextStyle(
        color: color ?? MonitorThemeData().neutral2,
        fontSize: 12.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle impRegular12({Color? color}) {
    return TextStyle(
        fontFamily: 'IBM_Plex_Sans',
        color: color ?? MonitorThemeData().neutral1,
        fontSize: 12.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle aveTaRegular10() {
    return TextStyle(
        color: MonitorThemeData().neutral2,
        fontSize: 10.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle aveTaRegular10Neu1() {
    return TextStyle(
        color: MonitorThemeData().neutral1,
        fontSize: 10.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle aveTaRegular10Neu2() {
    return TextStyle(
        color: MonitorThemeData().neutral2,
        fontSize: 10.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle avaRegilar16Green({Color? color}) {
    return TextStyle(
        color: color ?? MonitorThemeData().solidGreen,
        fontSize: 16.0,
        fontWeight: FontWeight.w600);
  }

  static TextStyle avaRegular16Neu1() {
    return TextStyle(
        color: MonitorThemeData().neutral1,
        fontSize: 16.0,
        fontWeight: FontWeight.w600);
  }

  static TextStyle avaRegular14Neu2({Color? color}) {
    return TextStyle(
        color: color ?? MonitorThemeData().neutral2,
        fontSize: 14.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle avaRegular14Neu3() {
    return TextStyle(
        color: MonitorThemeData().neutral3,
        fontSize: 14.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle avaRegular14Neu1() {
    return TextStyle(
        color: MonitorThemeData().neutral1,
        fontSize: 14.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle impSemibold({
    double? fontSize,
    Color? color,
    Color? bgColor,
  }) {
    return TextStyle(
      fontFamily: 'IBM_Plex_Sans',
      color: color ?? MonitorThemeData().solidGreen,
      fontSize: fontSize ?? 12.0,
      fontWeight: FontWeight.w600,
      backgroundColor: bgColor,
    );
  }

  static TextStyle impSemibold32() {
    return TextStyle(
        fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().solidGreen,
        fontSize: 32.0,
        fontWeight: FontWeight.w600);
  }

  static TextStyle impSemibold12() {
    return TextStyle(
        fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().solidGreen,
        fontSize: 12.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle averSemibold12() {
    return TextStyle(
        fontFamily: 'Averta Std CY',
        color: MonitorThemeData().neutral1,
        fontSize: 12.0,
        fontWeight: FontWeight.w600);
  }

  static TextStyle impRegular14Neu1({Color? color, Color? bgColor}) {
    return TextStyle(
      fontFamily: 'IBM_Plex_Sans',
      color: color ?? MonitorThemeData().neutral1,
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      backgroundColor: bgColor,
    );
  }

  static TextStyle impRegular14SolidRed() {
    return TextStyle(
        fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().solidRed,
        fontSize: 14.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle impRegular14SolidGreen() {
    return TextStyle(
        fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().solidGreen,
        fontSize: 14.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle captionRegular12() {
    return TextStyle(
        color: MonitorThemeData().neutral2,
        fontSize: 12.0,
        fontWeight: FontWeight.w400);
  }

  static TextStyle numberSemibold32() {
    return TextStyle(
        fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().solidGreen,
        fontSize: 32.0,
        fontWeight: FontWeight.w600);
  }

  // default number
  static TextStyle impRegular({
    Color? color,
    double? fontSize,
    Color? bgColor,
  }) {
    return TextStyle(
      fontFamily: 'IBM_Plex_Sans',
      color: color ?? MonitorThemeData().neutral1,
      fontSize: fontSize ?? 14.0,
      fontWeight: FontWeight.w400,
      backgroundColor: bgColor,
    );
  }

  // default text
  static TextStyle avertaRegular({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    Color? bgColor,
  }) =>
      TextStyle(
        color: color ?? MonitorThemeData().neutral2,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: FontStyle.normal,
        backgroundColor: bgColor,
      );
  static TextStyle avetarSemibold20Neutral1() {
    return TextStyle(
        // fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().neutral1,
        fontSize: 20.0,
        fontWeight: FontWeight.w600);
  }

  static TextStyle avetarSemibold12Neutral2() {
    return TextStyle(
        // fontFamily: 'IBM_Plex_Sans',
        color: MonitorThemeData().neutral2,
        fontSize: 12.0,
        fontWeight: FontWeight.w600);
  }
}

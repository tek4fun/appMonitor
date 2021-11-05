import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:flutter/material.dart';

class AppTexts {
  static Text normal(String text, BuildContext context,
      {Color? color, FontWeight fontWeight = FontWeight.normal}) {
    TextStyle style = Theme.of(context).textTheme.headline4!;
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style.copyWith(fontWeight: fontWeight));
  }

  static Text normalMedium(String text, BuildContext context, {Color? color}) {
    TextStyle style = Theme.of(context).textTheme.headline3!;
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style);
  }

  static Text small(String text, BuildContext context, {Color? color}) {
    TextStyle style = Theme.of(context).textTheme.headline6!;
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style);
  }

  static Text mediumSmall(String text, BuildContext context, {Color? color}) {
    TextStyle style = Theme.of(context).textTheme.subtitle2!;
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style);
  }

  static Text header(String text, BuildContext context, {Color? color}) {
    TextStyle style = Theme.of(context).textTheme.headline1!;
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style);
  }

  static Text large(String text, BuildContext context,
      {Color? color, FontWeight fontWeight = FontWeight.normal}) {
    TextStyle style = Theme.of(context).textTheme.headline2!;
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style.copyWith(fontWeight: fontWeight));
  }

  static Text flexible(String? text, BuildContext context,
      {Color? color,
      FontWeight fontWeight = FontWeight.normal,
      TextOverflow overflow = TextOverflow.ellipsis,
      double fontSize = 13,
      int? maxLine}) {
    TextStyle style;
    if (color != null) {
      style = Theme.of(context).textTheme.headline2!.copyWith(color: color);
    } else {
      style = Theme.of(context).textTheme.headline2!;
    }
    return Text(
      text ?? '',
      textAlign: TextAlign.right,
      style: style.copyWith(
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
      overflow: overflow,
      maxLines: maxLine == 0 ? null : maxLine,
    );
  }

  static Text flexibleAlign(
    String text,
    BuildContext context, {
    Color color = AppColors.white,
    String fontName = "Averta Std CY",
    TextAlign tAlign = TextAlign.left,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14,
    TextOverflow? overflow,
    int? maxLines,
    Color? bgColor,
  }) {
    TextStyle style;
    TextStyle dfStyle = Theme.of(context).textTheme.headline2!;
    if (fontName.isNotEmpty) {
      style = dfStyle.copyWith(fontFamily: fontName);
    }
    if (color != null) {
      style = dfStyle.copyWith(color: color);
    } else {
      style = dfStyle;
    }
    return Text(text,
        textAlign: tAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: style.copyWith(
            fontWeight: fontWeight,
            fontSize: fontSize,
            backgroundColor: bgColor));
  }

  static Text titleAppBar(String text, BuildContext context, {Color? color}) {
    TextStyle style = AppTextStyles.avertaRegular(
        color: MonitorThemeData().neutral1,
        fontSize: 16.0,
        fontWeight: FontWeight.w600);
    if (color != null) {
      style = style.copyWith(color: color);
    }
    return Text(text, style: style);
  }
}

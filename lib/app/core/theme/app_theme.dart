import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData darkThemeData = ThemeData(
  dialogBackgroundColor: AppColors.homeValueChangeDarkMode,
  brightness: Brightness.dark,
  primaryColorBrightness: Brightness.dark,
  primaryColor: AppColors.base,
  backgroundColor: AppColors.base,
  scaffoldBackgroundColor: AppColors.base,
  dividerColor: AppColors.darkDividerGray,
  secondaryHeaderColor: AppColors.white,
  textTheme: _defaultTextTheme(),
  iconTheme: _defaultIconTheme(),
  accentColor: AppColors.neutral2,
  canvasColor: AppColors.bgElevated2,
  appBarTheme: AppBarTheme(color: AppColors.bgElevated2), //color appbar
  fontFamily: 'Fonts_AvertaStdCy',
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.tradeMarkColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white30,
  ),
);
final ThemeData lightThemeData = ThemeData(
  fontFamily: 'Fonts_AvertaStdCy',
  dialogBackgroundColor: AppColors.homeValueChangeLightMode,
  brightness: Brightness.light,
  primaryColor: AppColors.lightBase,
  accentColor: AppColors.bgLightElevated1,
  backgroundColor: AppColors.lightBase,
  scaffoldBackgroundColor: AppColors.lightBase, //background
  dividerColor: AppColors.lightDividerGray,
  canvasColor: AppColors.lightBase,
  appBarTheme: AppBarTheme(color: AppColors.bgLightElevated1), //color appbar
  textTheme: _lightTextTheme(),
  iconTheme: _lightIconTheme(),
  bottomNavigationBarTheme:
      BottomNavigationBarThemeData(backgroundColor: AppColors.lightBase),
);
TextTheme _defaultTextTheme() {
  return const TextTheme(
    headline1: TextStyle(
        color: AppColors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
    headline2: TextStyle(
      color: AppColors.white,
    ),
    headline3: TextStyle(
      color: AppColors.white,
    ),
    headline4: TextStyle(color: AppColors.white),
    headline6: TextStyle(color: AppColors.white),
    subtitle2: TextStyle(
      color: AppColors.white,
    ),
  );
}

IconThemeData _defaultIconTheme() {
  return const IconThemeData(color: Colors.white);
}

TextTheme _lightTextTheme() {
  return TextTheme(
    headline1: TextStyle(
        color: AppColors.neutral1Light,
        fontSize: 16.0,
        fontWeight: FontWeight.w600),
    headline2: TextStyle(
      color: AppColors.neutral1Light,
    ),
    headline3: TextStyle(
      color: AppColors.black,
    ),
    headline4: TextStyle(color: AppColors.neutral1Light),
    headline6: TextStyle(color: AppColors.neutral1Light),
    subtitle2: TextStyle(
      color: AppColors.neutral1Light,
    ),
  );
}

IconThemeData _lightIconTheme() {
  return const IconThemeData(color: AppColors.neutral3Light);
}

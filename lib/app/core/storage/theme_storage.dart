import 'package:app_monitors/app/core/constants/enum.dart';
import 'package:app_monitors/app/core/constants/storage_key.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeStorage {
  final _box = GetStorage();
  final _key = StorageKey.theme;

  ThemeMode get theme => _loadThemeFromBox() == ThemeModeEnum.DARK
      ? ThemeMode.dark
      : ThemeMode.light;

  ThemeModeEnum _loadThemeFromBox() =>
      (_box.read(_key) == ThemeModeEnum.LIGHT.toString())
          ? ThemeModeEnum.LIGHT
          : ThemeModeEnum.DARK;

  _saveThemeToBox(ThemeModeEnum thememode) =>
      _box.write(_key, thememode.toString());

  void switchTheme(ThemeModeEnum themeMode) {
    Get.changeThemeMode(
        (themeMode == ThemeModeEnum.DARK) ? ThemeMode.dark : ThemeMode.light);
    _saveThemeToBox(themeMode);
  }
}

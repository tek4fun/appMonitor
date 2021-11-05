import 'package:app_monitors/app/core/storage/theme_storage.dart';
import 'package:app_monitors/app/core/utils/app_log.dart';
import 'package:app_monitors/app/core/theme/app_theme.dart';
import 'package:app_monitors/app/core/translations/app_translations.dart';
import 'package:app_monitors/app/core/utils/firebase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:app_monitors/app/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';
import 'app/core/theme/app_theme.dart';

void main() async {
  await GetStorage.init();
  await Firebase.initializeApp();
  void onAppInit() {
    AppLog();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
    FirebaseMessage().listenToMessage();
  }

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.rightToLeft,
    theme: lightThemeData,
    darkTheme: darkThemeData,
    themeMode: ThemeStorage().theme,
    getPages: AppPages.pages,
    onInit: onAppInit,
    locale: LocalizationService.locale,
    initialRoute: Routes.SPLASH,
    fallbackLocale: LocalizationService.fallbackLocale,
    translations: LocalizationService(),
    builder: (context, child) {
      return MediaQuery(
        child: child!,
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      );
    },
  ));
}

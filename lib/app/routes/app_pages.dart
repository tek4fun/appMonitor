import 'package:app_monitors/app/modules/home/binding.dart';
import 'package:app_monitors/app/modules/home/home_page.dart';
import 'package:app_monitors/app/modules/splash_screen/splash_screen.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.SPLASH, page: () => SplashScreen()),
    GetPage(
        name: Routes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
  ];
}

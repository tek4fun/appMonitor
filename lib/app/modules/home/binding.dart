import 'package:app_monitors/app/data/provider/api_provider.dart';
import 'package:app_monitors/app/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut(() => ApiProvider());
  }
}

import 'package:app_monitors/app/data/provider/api_provider.dart';
import 'package:app_monitors/app/modules/notification/controller.dart';
import 'package:get/get.dart';

class NotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(() => NotificationController());
    Get.lazyPut(() => ApiProvider());
  }
}

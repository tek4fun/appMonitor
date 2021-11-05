import 'package:app_monitors/app/modules/notification/content_page/controller.dart';
import 'package:get/get.dart';

class NotificationDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationDetailController>(
        () => NotificationDetailController());
  }
}

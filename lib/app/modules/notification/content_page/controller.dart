import 'package:app_monitors/app/data/domain/models/sampleNotification.dart';
import 'package:app_monitors/app/modules/notification/controller.dart';
import 'package:get/get.dart';

class NotificationDetailController extends GetxController {
  var isDeleteMode = false.obs;
  var notificationContent =
      SampleNotification(userId: -999, id: -999, title: "", body: "").obs;

  removeItem() {
    NotificationController notiController = Get.find();
    notiController.notificationList
        .removeWhere((element) => element.id == notificationContent.value.id);
    Get.back();
  }
}

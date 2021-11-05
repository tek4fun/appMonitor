import 'package:app_monitors/app/data/domain/models/sampleNotification.dart';
import 'package:app_monitors/app/data/repository/api_repository.dart';
import 'package:app_monitors/app/modules/notification/content_page/controller.dart';
import 'package:app_monitors/app/modules/notification/content_page/notification_detail_page.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NotificationController extends GetxController {
  var notificationList = <SampleNotification>[].obs;
  var _apiRespository = ApiRepository();
  var isDeleteMode = false.obs;
  var refreshController = RefreshController(initialRefresh: false);

  @override
  void onReady() async {
    notificationList.value = await _apiRespository.testNotificationList();
    super.onReady();
  }

  toggleDeleteMode() => isDeleteMode.value = !isDeleteMode.value;

  removeItemAtID(int id) =>
      notificationList.removeWhere((element) => element.id == id);

  void onRefresh() async {
    // monitor network fetch
    notificationList.value = await _apiRespository.testNotificationList();
    // if failed,use refreshFailed()
    refreshController.refreshCompleted();
  }

  void onLoading() async {
    // monitor network fetch
    notificationList.value = await _apiRespository.testNotificationList();
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    refreshController.loadComplete();
  }

  showContent(int index) {
    NotificationDetailController controller =
        Get.put(NotificationDetailController());
    controller.notificationContent.value = notificationList[index];
    Get.to(NotificationDetailPage());
  }
}

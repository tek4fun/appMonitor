import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/modules/notification/content_page/binding.dart';
import 'package:app_monitors/app/modules/notification/content_page/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class NotificationDetailPage extends GetView<NotificationDetailController> {
  @override
  Widget build(BuildContext context) {
    NotificationDetailBinding().dependencies();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Notification"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                controller.removeItem();
              },
              icon: GestureDetector(
                child: SvgPicture.asset(
                  AppPath.ic_delete,
                  color: MonitorThemeData().neutral1,
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: Obx(
            () => _buildContent(controller),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(NotificationDetailController controller) {
    if (controller.notificationContent.value.id == -999) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 12,
            ),
            child: Text(
              controller.notificationContent.value.title,
              textAlign: TextAlign.justify,
              style: AppTextStyles.avertaRegular(
                  fontSize: 16,
                  color: MonitorThemeData().neutral1,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 12,
              right: 12,
            ),
            child: Divider(
              height: 1,
              color: MonitorThemeData().bgElevated4,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 12,
                right: 12,
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Text(controller.notificationContent.value.body +
                      controller.notificationContent.value.body +
                      controller.notificationContent.value.body +
                      controller.notificationContent.value.body +
                      controller.notificationContent.value.body +
                      controller.notificationContent.value.body +
                      controller.notificationContent.value.body),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

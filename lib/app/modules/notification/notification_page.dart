import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/core/utils/dimension.dart';
import 'package:app_monitors/app/data/domain/models/sampleNotification.dart';
import 'package:app_monitors/app/modules/notification/binding.dart';
import 'package:app_monitors/app/modules/notification/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NotificationPage extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    NotificationBinding().dependencies();
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Notification"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                controller.toggleDeleteMode();
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

  Widget _buildContent(NotificationController controller) {
    if (controller.notificationList.isEmpty) {
      return Center(child: CircularProgressIndicator());
    }
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      controller: controller.refreshController,
      onRefresh: () => controller.onRefresh(),
      onLoading: () => controller.onLoading(),
      header: ClassicHeader(),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.notificationList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: width(context, 12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: width(context, 12)),
                    child: Text(
                      controller.notificationList[index].id.toString(),
                      style: AppTextStyles.primaryAvetaFontW(
                          color: MonitorThemeData().neutral2,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  _buildNotice(controller.notificationList),
                ],
              ),
            );
          }),
    );
  }

  Widget _buildNotice(List<SampleNotification> list) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) => Container(
        child: Row(
          children: [
            Obx(
              () => Visibility(
                visible: controller.isDeleteMode.value,
                child: GestureDetector(
                  onTap: () => controller
                      .removeItemAtID(controller.notificationList[index].id),
                  child: Container(
                    padding: EdgeInsets.only(right: width(context, 12)),
                    child: SvgPicture.asset(AppPath.icRemoveWatchList),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: 12, horizontal: width(context, 12)),
                decoration: BoxDecoration(
                  color: MonitorThemeData().bgElevated1,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  // onTap: () => _showDetail(list[index]
                  //   ..isEnableRemove = (widget.isEnabledRemove ?? false)),
                  onTap: () {
                    controller.showContent(index);
                  },
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              list[index].title,
                              style: AppTextStyles.primaryAvetaFontW(
                                // color: list[index].status == 0
                                //     ? MonitorThemeData().neutral1
                                //     : MonitorThemeData().neutral2,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              // list[index].regDateTime.formatTimeIso(),
                              list[index].id.toString(),
                              style: AppTextStyles.primaryAvetaFontW(
                                  color: MonitorThemeData().neutral2,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          //list[index].content,
                          list[index].body,
                          style: AppTextStyles.primaryAvetaFontW(
                            // color: list[index].status == 0
                            //     ? MonitorThemeData().neutral1
                            //     : MonitorThemeData().neutral2,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 8,
      ),
    );
  }
}

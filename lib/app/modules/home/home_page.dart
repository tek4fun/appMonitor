import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/modules/home/controller.dart';
import 'package:app_monitors/app/modules/notification/notification_page.dart';
import 'package:app_monitors/app/widgets/bottom_navigation/tab_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomePageController> {
  final HomePageController homeController = Get.find<HomePageController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(builder: (controller) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: Text(TabNavigationItem.items[controller.tabIndex].title),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(NotificationPage());
                },
                icon: GestureDetector(
                  child: SvgPicture.asset(
                    AppPath.iconNotification,
                    color: MonitorThemeData().neutral1,
                  ),
                ),
              )
            ],
          ),
          body: _buildPageView(),
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: AppTextStyles.primaryAvetaFontW(
                fontSize: 10.0, fontWeight: FontWeight.w600),
            unselectedLabelStyle: AppTextStyles.primaryAvetaFontW(
                fontSize: 10.0, fontWeight: FontWeight.w400),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            backgroundColor: MonitorThemeData().bgBottomTabbar,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedItemColor: AppColors.primaryActive,
            unselectedItemColor: AppColors.neutral3,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [_buildItem(0), _buildItem(1), _buildItem(2), _buildItem(3)],
          ),
        ),
      );
    });
  }

  Widget _buildPageView() {
    return PageView(
      controller: homeController.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: TabNavigationItem.items.map((e) => e.page).toList(),
    );
  }

  BottomNavigationBarItem _buildItem(int tabIndex) {
    String text = TabHelper.description(tabIndex);
    return BottomNavigationBarItem(
        icon: TabHelper.iconImage(tabIndex, _colorTabMatching(index: tabIndex)),
        label: text);
  }

  Color _colorTabMatching({required int index}) {
    return homeController.tabIndex == index
        ? MonitorThemeData().primaryActive
        : MonitorThemeData().neutral3;
  }
}

import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/modules/extends/extends.dart';
import 'package:app_monitors/app/modules/logs/logs.dart';
import 'package:app_monitors/app/modules/money_transfer/money_transfer.dart';
import 'package:app_monitors/app/modules/trading/trading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabNavigationItem {
  const TabNavigationItem({
    required this.page,
    required this.title,
  });

  final Widget page;
  final String title;

  static List<TabNavigationItem> get items => <TabNavigationItem>[
        TabNavigationItem(
          page: TradingPage(),
          title: 'Trading'.tr,
        ),
        TabNavigationItem(
          page: MoneyTransferPage(),
          title: 'MoneyTransfer'.tr,
        ),
        TabNavigationItem(
          page: LogsPage(),
          title: 'Logs'.tr,
        ),
        TabNavigationItem(
          page: ExtendsPage(),
          title: 'Extends'.tr,
        ),
      ];
}

class TabHelper {
  static TabItem item({required int index}) {
    switch (index) {
      case 0:
        return TabItem.TRADING;
      case 1:
        return TabItem.MONEY_TRANSFER;
      case 2:
        return TabItem.LOGS;
      case 2:
        return TabItem.EXTENDS;
    }
    return TabItem.TRADING;
  }

  static String description(int tabItem) {
    switch (tabItem) {
      case 0:
        return 'Trading'.tr;
      case 1:
        return 'MoneyTransfer'.tr;
      case 2:
        return 'Logs'.tr;
      case 3:
        return 'Extends'.tr;
    }
    return '';
  }

  static Image iconImage(int tabItem, Color color) {
    switch (tabItem) {
      case 0:
        return Image.asset(
          AppPath.placeOrder,
          color: color,
          height: 32,
          width: 32,
        );
      case 1:
        return Image.asset(
          AppPath.ic_money_transfer,
          color: color,
          height: 32,
          width: 32,
        );
      case 2:
        return Image.asset(
          AppPath.ic_order,
          color: color,
          height: 32,
          width: 32,
        );
      case 3:
        return Image.asset(
          AppPath.ic_application,
          color: color,
          height: 32,
          width: 32,
        );
      default:
        return Image.asset(
          AppPath.ic_application,
          color: color,
          height: 32,
          width: 32,
        );
    }
  }

  static Color color(TabItem tabItem) {
    switch (tabItem) {
      case TabItem.TRADING:
        return AppColors.primaryActive;
      case TabItem.MONEY_TRANSFER:
        return AppColors.primaryActive;
      case TabItem.LOGS:
        return AppColors.primaryActive;
    }
    return AppColors.neutral3;
  }

  static Color colorTabItem(int tabItem) {
    switch (tabItem) {
      case 0:
        return AppColors.primaryActive;
      case 1:
        return AppColors.primaryActive;
      case 2:
        return AppColors.primaryActive;
      case 3:
        return AppColors.primaryActive;
      case 4:
        return AppColors.primaryActive;
    }
    return AppColors.neutral3;
  }
}

enum TabItem { TRADING, MONEY_TRANSFER, LOGS, EXTENDS }

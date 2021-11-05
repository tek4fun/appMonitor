import 'package:app_monitors/app/core/constants/enum.dart';
import 'package:app_monitors/app/core/storage/theme_storage.dart';
import 'package:app_monitors/app/data/domain/models/sampleModel.dart';
import 'package:app_monitors/app/data/repository/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  var tabIndex = 0;
  late PageController pageController;
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    pageController.jumpToPage(index);
    update();
  }
}

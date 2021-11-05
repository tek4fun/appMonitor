import 'package:app_monitors/app/widgets/app_alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppToast {
  static void showError(String message, String title) {
    String mms = message != null ? message.trim() : "";

    if (mms.isEmpty || mms == "ERROR401" || mms == "ERROR_IGNORE") {
      return;
    }
    Get.snackbar(title, mms,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 4,
        colorText: Colors.white);
  }

  static void showWarning(String message, String title) {
    Get.snackbar(title, message,
        backgroundColor: Colors.yellow[600],
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 4,
        colorText: Colors.white);
  }

  static void showSuccess(String message, String title) {
    Get.snackbar(title, message,
        backgroundColor: Colors.green[600],
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 4,
        colorText: Colors.white);
  }

  static void showLoading() {
    Get.dialog(Dialog(
      child: CircularProgressIndicator(),
    ));
  }

  static void hideLoading() {
    if (Get.isDialogOpen ?? false) Get.back();
  }

  static void showAlertDialog(BuildContext context,
      {required String title,
      required String des,
      void Function()? accept,
      String? acceptText,
      String? cancelText,
      bool? hasCancelBtn = false,
      void Function()? actionCancel,
      bool? isError = false,
      TextAlign? textAlign,
      Function? dontShowAgain,
      bool? isDontShowAgain = false}) {
    showDialog(
      context: context,
      builder: (BuildContext context) => MbsAlertDialog(
        title: title,
        des: des,
        accept: accept,
        isAccept: hasCancelBtn! ? false : true,
        acceptText: acceptText,
        cancelText: cancelText,
        isCancel: hasCancelBtn,
        actionCancel: actionCancel,
        isError: isError,
        textAlign: textAlign,
        dontShowAgain: dontShowAgain,
        isDontShowAgain: isDontShowAgain,
      ),
    );
  }
}

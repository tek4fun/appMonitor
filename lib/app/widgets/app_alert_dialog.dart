import 'package:app_monitors/app/core/storage/theme_storage.dart';
import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/core/utils/dimension.dart';
import 'package:app_monitors/app/widgets/custom_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class MbsAlertDialog extends StatefulWidget {
  final String title;
  final String des;
  final String? cancelText;
  final String? acceptText;
  final void Function()? accept;
  final bool? isAccept;
  final bool? isCancel;
  final void Function()? actionCancel;
  final bool? isError;
  final TextAlign? textAlign;
  final bool? isDontShowAgain;
  final Function? dontShowAgain;

  MbsAlertDialog(
      {required this.title,
      required this.des,
      this.accept,
      this.isAccept = true,
      this.acceptText,
      this.cancelText,
      this.isCancel = false,
      this.actionCancel,
      this.isError = false,
      this.textAlign,
      this.dontShowAgain,
      this.isDontShowAgain = false,
      Key? key})
      : super(key: key);

  @override
  _MbsAlertDialogState createState() => _MbsAlertDialogState();
}

class _MbsAlertDialogState extends State<MbsAlertDialog> {
  bool _dontShowAgain = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      backgroundColor: MonitorThemeData().bgElevated2,
      title: Container(
        height: 44,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1.0, color: MonitorThemeData().neutral2))),
        child: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: AppTextStyles.semibold16(
                color: MonitorThemeData().primaryActive),
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: width(context, 12.0),
              right: width(context, 12.0),
              top: 12,
            ),
            child: Text(
              widget.des,
              style: AppTextStyles.primaryRegular14(
                  color: widget.isError ?? false
                      ? MonitorThemeData().solidRed
                      : MonitorThemeData().neutral1),
              textAlign: widget.textAlign ?? TextAlign.center,
            ),
          ),
          Visibility(
            visible: widget.isDontShowAgain ?? false,
            child: InkWell(
              onTap: () {
                setState(() {
                  _dontShowAgain = !_dontShowAgain;
                });
                widget.dontShowAgain!(_dontShowAgain);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckBox(
                    isChecked: _dontShowAgain,
                  ),
                  Flexible(
                    child: Text(
                      'dont_show_again'.tr,
                      style: AppTextStyles.primaryAvetaFontW(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: MonitorThemeData().neutral1),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 24,
                bottom: 12,
                left: width(context, 12.0),
                right: width(context, 12.0)),
            child: Row(
              mainAxisAlignment: widget.isAccept!
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: !widget.isAccept!,
                  child: SizedBox(
                    height: 32,
                    width: width(context, 128.0),
                    child: TextButton(
                      child: Text(
                        widget.cancelText ?? 'cancel'.tr,
                        style: AppTextStyles.primaryRegular14(
                            color: MonitorThemeData().primaryActive),
                      ),
                      onPressed: widget.isCancel!
                          ? widget.actionCancel
                          : () {
                              Navigator.of(context).pop();
                            },
                    ),
                  ),
                ),
                InkWell(
                  onTap: widget.accept,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    alignment: Alignment.center,
                    width: width(context, widget.isAccept! ? 255.0 : 128.0),
                    height: 32,
                    decoration: BoxDecoration(
                      color: MonitorThemeData().primaryActive,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      widget.acceptText ?? 'yes'.tr,
                      style: AppTextStyles.primaryRegular14FontW(
                          color: ThemeStorage().theme == ThemeMode.light
                              ? AppColors.lightBase
                              : MonitorThemeData().neutral1,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

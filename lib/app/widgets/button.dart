import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/core/utils/dimension.dart';
import 'package:app_monitors/app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MBSButton extends StatefulWidget {
  final String label;
  final Color? backgroundColor;
  final Color? labelColor;
  final double? fontSize;
  final double? buttonWidth;
  final FontWeight? buttonFontWeight;
  final void Function()? onPressed;
  final double? maxWidth;
  final bool? isLoading;
  final BoxBorder? boxBorder;
  final double? maxHeight;
  final BorderRadiusGeometry? borderRadiusGeometry;

  MBSButton(
      {required this.label,
      required this.onPressed,
      this.backgroundColor,
      this.labelColor,
      this.fontSize = 14.0,
      this.buttonWidth = 170.0,
      this.maxWidth = 350.0,
      this.maxHeight = 40,
      this.isLoading = false,
      this.boxBorder,
      this.borderRadiusGeometry,
      this.buttonFontWeight = FontWeight.normal});

  @override
  _MBSButtonState createState() => _MBSButtonState();
}

class _MBSButtonState extends State<MBSButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.maxWidth ?? width(context, widget.buttonWidth!),
        height: plusWithTablet(context, widget.maxHeight!),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? MonitorThemeData().bgElevated2,
          borderRadius: widget.borderRadiusGeometry ?? BorderRadius.circular(8),
          border: widget.boxBorder,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width(context, 8),
            vertical: height(context, 8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTexts.flexible(
                widget.label,
                context,
                color: widget.labelColor ?? MonitorThemeData().primaryActive,
                fontSize: widget.fontSize!,
                fontWeight: widget.buttonFontWeight!,
              ),
              Visibility(
                visible: widget.isLoading!,
                child: SizedBox(
                  width: 8.0,
                ),
              ),
              Visibility(
                visible: widget.isLoading!,
                child: SizedBox(
                  child: Lottie.asset(
                    AppPath.loading,
                    width: 32,
                    height: 32,
                    fit: BoxFit.fill,
                    // options: LottieOptions(enableMergePaths: true),
                  ),
                  height: 20.0,
                  width: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

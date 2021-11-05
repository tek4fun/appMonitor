import 'package:app_monitors/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class InputClearButton extends StatelessWidget {
  final void Function()? onTap;
  InputClearButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 20,
        height: 20,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: AppColors.bgElevated3,
            child: Icon(
              Icons.clear,
              color: AppColors.white,
              size: 10,
            ),
          ),
        ),
      ),
    );
  }
}

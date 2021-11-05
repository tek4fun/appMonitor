import 'package:app_monitors/app/core/constants/app_path.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final bool? isChecked;
  final EdgeInsets? padding;
  final double? width;
  final double? height;

  // ignore: avoid_init_to_null
  const CustomCheckBox({this.isChecked, this.padding, this.width, this.height});

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: widget.padding ?? const EdgeInsets.all(10.0),
        child: widget.isChecked!
            ? Image.asset(
                AppPath.icChecked,
                height: widget.height ?? 24,
                width: widget.width ?? 24,
                color: MonitorThemeData().primaryActive,
              )
            : Image.asset(
                AppPath.icUnchecked,
                height: widget.height ?? 24,
                width: widget.width ?? 24,
              ),
      ),
    );
  }
}

class LabeledCheckbox extends StatefulWidget {
  const LabeledCheckbox({
    this.label,
    this.padding = null,
    required this.value,
    required this.onChanged,
  });

  final String? label;
  final EdgeInsets? padding;
  final bool value;
  final void Function(bool? value)? onChanged;

  @override
  _LabeledCheckboxState createState() => _LabeledCheckboxState();
}

class _LabeledCheckboxState extends State<LabeledCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged!(!widget.value);
      },
      child: Padding(
        padding: widget.padding ?? const EdgeInsets.all(0.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 24.0,
              width: 24.0,
              child: Theme(
                data: ThemeData(
                    unselectedWidgetColor: MonitorThemeData().neutral2),
                child: Checkbox(
                  value: widget.value,
                  activeColor: MonitorThemeData().primaryActive,
                  checkColor: MonitorThemeData().primaryBlueDisable,
                  onChanged: (bool? newValue) {
                    widget.onChanged!(newValue);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: AppTexts.flexible(widget.label, context,
                  fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

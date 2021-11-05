import 'package:app_monitors/app/core/theme/app_text_style.dart';
import 'package:app_monitors/app/core/theme/theme_data.dart';
import 'package:app_monitors/app/widgets/texts.dart';
import 'package:app_monitors/app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormTextField extends StatefulWidget {
  final String? labelText;
  final Color? labelTextColor;
  final String? hintText;
  final Color? hintTextColor;
  final String? errorText;
  final Color? errorTextColor;
  final String? warningText;
  final Color? warningTextColor;
  final String? initialValue;
  final bool? autoFocus;
  final Color? cursorColor;
  final double? cursorWidth;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final InputDecoration? decoration;
  final Widget? suffix;
  final bool? enabled;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool? readOnly;

  final Color? textColor;
  final Color? disabledColor;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  static const int noMaxLength = -1;
  final InputCounterWidgetBuilder? buildCounter;
  final Brightness? keyboardAppearance;
  final TextStyle? style;
  final String? Function(String?)? validator;
  final bool? autovalidate;
  final int? maxLines;
  final Iterable<String>? autofillHints;
  final bool? autocorrect;
  final FontWeight? fontWeight;

  FormTextField({
    Key? key,
    this.initialValue,
    this.labelText = '',
    this.labelTextColor,
    this.hintText = '',
    this.hintTextColor,
    this.errorText,
    this.errorTextColor,
    this.autoFocus = false,
    this.cursorColor,
    this.cursorWidth = 1,
    this.warningText,
    this.warningTextColor,
    this.keyboardType = TextInputType.visiblePassword,
    this.onChanged,
    this.decoration,
    this.suffix,
    this.enabled = true,
    this.controller,
    this.focusNode,
    this.readOnly = false,
    this.textColor,
    this.disabledColor,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength = FormTextField.noMaxLength,
    this.buildCounter,
    this.keyboardAppearance = Brightness.light,
    this.style,
    this.validator,
    this.autovalidate = false,
    this.maxLines,
    this.autofillHints,
    this.autocorrect = true,
    this.fontWeight = FontWeight.w400,
  }) : super(key: key);

  @override
  _FormTextFieldState createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  bool _readOnly = false;
  late String? _initialValue;
  late String? _stateCurrentValue;

  late FocusNode? _focusNode;

  FocusNode get _effectiveFocusNode =>
      widget.focusNode ?? (_focusNode ??= FocusNode());

  bool get needsCounter => (widget.maxLength != null &&
      widget.maxLength != FormTextField.noMaxLength);

  int get _currentLength => _effectiveController.value.text.runes.length;

  TextEditingController _effectiveController = TextEditingController();

  @override
  void initState() {
    _initialValue = widget.initialValue;
    _stateCurrentValue = widget.initialValue;

    if (widget.controller != null) _effectiveController = widget.controller!;
    _effectiveController.text = "${_initialValue}";

    _effectiveController.addListener(() {
      if (_stateCurrentValue != _effectiveController.text) {
        _stateCurrentValue = _effectiveController.text;
        if (widget.onChanged != null)
          widget.onChanged!(_stateCurrentValue ?? '');
      }

      if (needsCounter) {
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _focusNode?.dispose();
    if (widget.controller == null) _effectiveController.dispose();
    super.dispose();
  }

  // @override
  // void didUpdateWidget(FormTextField oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   if (_initialValue != widget.initialValue) {
  //     _initialValue = widget.initialValue;
  //     if (widget.controller != null) _effectiveController = widget.controller;
  //     WidgetsBinding.instance.addPostFrameCallback((duration) {
  //       String newValue = "${_initialValue ?? ''}";
  //       _effectiveController.text = newValue;
  //       _effectiveController.selection =
  //           TextSelection.collapsed(offset: newValue.length);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    _readOnly = widget.readOnly!;
    final List<TextInputFormatter> formatters =
        widget.inputFormatters ?? <TextInputFormatter>[];
    if (widget.maxLength != null)
      formatters.add(LengthLimitingTextInputFormatter(widget.maxLength));

    Widget counter = _getCounter();

    return Row(
      children: <Widget>[
        Visibility(
          visible: widget.labelText!.isNotEmpty,
          child: Expanded(
            flex: 2,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Texts.avertaNormal(widget.labelText!,
                      fontWeight: widget.fontWeight!,
                      color:
                          widget.labelTextColor ?? MonitorThemeData().neutral2),
                ),
                counter,
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: TextFormField(
            onChanged: widget.onChanged,
            style: widget.style ??
                AppTextStyles.primaryAvetaFontW(
                    color: MonitorThemeData().neutral1,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
            autofocus: widget.autoFocus!,
            focusNode: widget.focusNode,
            decoration: _getEffectiveDecoration(),
            cursorColor: widget.cursorColor,
            cursorWidth: 1,
            maxLines: widget.maxLines,
            keyboardType: widget.keyboardType,
            keyboardAppearance: widget.keyboardAppearance,
            controller: _effectiveController,
            autofillHints: widget.autofillHints,
            autocorrect: widget.autocorrect!,
            enabled: !_readOnly,
            readOnly: _readOnly,
            inputFormatters: formatters,
            textCapitalization: widget.textCapitalization!,
            validator: widget.validator,
          ),
        ),
      ],
    );
  }

  Widget _getCounter() {
    if (!needsCounter) return Container();

    final int currentLength = _currentLength;
    if (widget.buildCounter != null) {
      final bool isFocused = _effectiveFocusNode.hasFocus;
      return Semantics(
        container: true,
        liveRegion: isFocused,
        child: widget.buildCounter!(
          context,
          currentLength: currentLength,
          maxLength: widget.maxLength,
          isFocused: isFocused,
        ),
      );
    }

    if (widget.maxLength! > 0) {
      // Show the maxLength in the counter
      String counterText = '$currentLength';

      counterText += '/${widget.maxLength}';
      final bool isFocused = _effectiveFocusNode.hasFocus;
      return Semantics(
        container: true,
        liveRegion: isFocused,
        child: Texts.avertaNormal(
          counterText,
          color: MonitorThemeData().bgBase,
        ),
      );
    }
    return Container();
  }

  InputDecoration _getEffectiveDecoration() {
    final InputDecoration effectiveDecoration =
        widget.decoration?.copyWith(enabled: !_readOnly) ??
            defaultInputDecoration(enabled: !_readOnly).copyWith(
              enabled: !_readOnly,
              hintText: widget.hintText,
              errorText: widget.errorText,
              helperText: widget.warningText,
              suffix: _readOnly
                  ? null
                  : InputClearButton(
                      onTap: () {
                        _effectiveController.clear();
                      },
                    ),
            );
    return effectiveDecoration;
  }

  InputDecoration defaultInputDecoration({
    Color? hintTextColor,
    Color? errorTextColor,
    Color? warningTextColor,
    Color? disabledColor,
    bool enabled = true,
  }) {
    return InputDecoration(
      hintStyle: AppTextStyles.normal().copyWith(
        color: enabled
            ? hintTextColor ?? MonitorThemeData().neutral3
            : disabledColor ?? MonitorThemeData().neutral3,
      ),
      errorStyle: AppTextStyles.normal().copyWith(
        color: errorTextColor ?? MonitorThemeData().solidRed,
      ),
      errorMaxLines: 2,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: MonitorThemeData().solidRed,
        ),
      ),
      helperStyle: AppTextStyles.normal().copyWith(
        color: warningTextColor ?? MonitorThemeData().solidYellow,
      ),
      helperMaxLines: 2,
      isDense: true,
      filled: true,
      contentPadding: const EdgeInsets.all(10),
      fillColor: MonitorThemeData().bgElevated1,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: MonitorThemeData().bgElevated3,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: MonitorThemeData().primaryActive,
          ),
          borderRadius: BorderRadius.circular(8.0)),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: MonitorThemeData().bgElevated3,
          ),
          borderRadius: BorderRadius.circular(8.0)),
    );
  }
}

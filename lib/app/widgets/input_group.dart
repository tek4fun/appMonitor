// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// typedef CallbackTextChanged = void Function(String text);

// class InputGroup extends StatefulWidget {
//   final String labelText;
//   final String hintText;
//   final String valueText;
//   final FormFieldValidator<String> validator;
//   final TextEditingController controller;
//   final FocusNode focusNode;
//   final CallbackTextChanged callbackTextChanged;
//   final Widget suffixIcon;
//   final bool isEnable;
//   final List<TextInputFormatter> inputFormatters;
//   final bool autovalidate;
//   final bool isError;
//   final Color bgColor;

//   InputGroup({
//     this.controller,
//     this.validator,
//     this.autovalidate = false,
//     this.hintText = '',
//     this.labelText,
//     this.valueText,
//     this.callbackTextChanged,
//     this.focusNode,
//     this.isEnable = true,
//     this.suffixIcon,
//     this.isError = false,
//     this.inputFormatters,
//     this.bgColor = AppColors.bgElevated1,
//   }) : assert(labelText != null, callbackTextChanged != null);

//   @override
//   _InputGroupState createState() => _InputGroupState();
// }

// class _InputGroupState extends State<InputGroup> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 12),
//       height: 40,
//       child: Row(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               padding: EdgeInsets.only(right: width(context, 6)),
//               child: Text(
//                 widget.labelText,
//                 style: AppTextStyles.primaryAvetaFontW(
//                     color: MonitorThemeData().neutral2,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400),
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: widget.bgColor,
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               child: TextFormField(
//                 controller: widget.controller,
//                 validator: widget.validator,
//                 enabled: widget.isEnable ?? true,
//                 initialValue: widget.valueText,
//                 onChanged: widget.callbackTextChanged,
//                 focusNode: widget.focusNode,
//                 style: AppTextStyles.primaryAvetaFontW(
//                     fontSize: 14,
//                     color: widget.isEnable
//                         ? MonitorThemeData().neutral1
//                         : MonitorThemeData().neutral2),
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   suffixIcon: widget.suffixIcon,
//                   floatingLabelBehavior: FloatingLabelBehavior.always,
//                   hintText: widget.hintText,
//                   fillColor: MonitorThemeData().bgElevated1,
//                   contentPadding: widget.suffixIcon == null
//                       ? EdgeInsets.only(
//                           left: width(context, 12.0),
//                           right: width(context, 12.0))
//                       : EdgeInsets.only(
//                           left: width(context, 12.0),
//                         ),
//                   enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                       borderSide: BorderSide(
//                           color: widget.isError
//                               ? MonitorThemeData().solidRed
//                               : MonitorThemeData().bgElevated3,
//                           width: 1.0)),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                       borderSide: BorderSide(
//                           color: widget.isError
//                               ? MonitorThemeData().solidRed
//                               : MonitorThemeData().bgElevated3,
//                           width: 1.0)),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                     borderSide: BorderSide(
//                         color: MonitorThemeData().primaryActive, width: 1.0),
//                   ),
//                   hintStyle: AppTextStyles.avertaRegular(
//                       color: MonitorThemeData().neutral3),
//                 ),
//                 inputFormatters: widget.inputFormatters,
//                 autovalidate: widget.autovalidate,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

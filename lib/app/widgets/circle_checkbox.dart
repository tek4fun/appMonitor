// import 'package:MbsApp/global/app_color.dart';
// import 'package:MbsApp/global/dimension.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';

// class CircleCheckbox extends StatelessWidget {
//   final bool value;
//   final double textFontSize;
//   final ValueChanged<bool> onChanged;
//   final Color activeColor;
//   final Color checkColor;
//   final Color textColor;
//   final bool tristate;
//   final MaterialTapTargetSize materialTapTargetSize;

//   CircleCheckbox({
//     Key key,
//     @required this.value,
//     this.tristate = false,
//     @required this.onChanged,
//     this.activeColor = AppColors.primaryActive,
//     this.checkColor,
//     this.textColor,
//     this.textFontSize,
//     this.materialTapTargetSize,
//   })  : assert(tristate != null),
//         assert(tristate || value != null),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         ClipOval(
//           child: SizedBox(
//             width: Checkbox.width,
//             height: Checkbox.width,
//             child: Container(
//               decoration: new BoxDecoration(
//                 border: Border.all(
//                     width: 2,
//                     color: Theme.of(context).unselectedWidgetColor ??
//                         Theme.of(context).disabledColor),
//                 borderRadius: new BorderRadius.circular(100),
//               ),
//               child: Checkbox(
//                 value: value,
//                 tristate: tristate,
//                 onChanged: onChanged,
//                 activeColor: activeColor,
//                 checkColor: checkColor ?? MonitorThemeData().bgBase,
//                 materialTapTargetSize: materialTapTargetSize,
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           width: width(context, 6),
//         ),
//         //AppTexts.flexible(text, color: textColor, fontSize: textFontSize, ),
//       ],
//     );
//   }
// }

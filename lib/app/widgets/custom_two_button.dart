// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';

// class CustomTwoButton extends StatelessWidget {
//   CustomTwoButton(
//       {this.leftTitle,
//       this.rightTitle,
//       this.leftAction,
//       this.rightAction,
//       this.rightButtonActive});

//   String leftTitle;
//   String rightTitle;
//   Function leftAction;
//   Function rightAction;
//   bool rightButtonActive;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//       child: Container(
//         height: 40,
//         child: Row(
//           children: [
//             Expanded(
//               child: MaterialButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8)),
//                 color: MonitorThemeData().bgElevated2,
//                 child: AppTexts.flexible(leftTitle,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                     color: MonitorThemeData().primaryActive),
//                 onPressed: () => leftAction(),
//               ),
//             ),
//             const SizedBox(width: 6),
//             Expanded(
//               child: MaterialButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8)),
//                 color: rightButtonActive
//                     ? MonitorThemeData().primaryActive
//                     : MonitorThemeData().primaryBlueDisable,
//                 child: AppTexts.flexible(rightTitle,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w600,
//                     color: rightButtonActive
//                         ? MonitorThemeData().neutral1
//                         : MonitorThemeData().neutral2),
//                 onPressed: () {
//                   if (rightButtonActive) {
//                     rightAction();
//                   }
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

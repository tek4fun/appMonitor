// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';

// class CustomButton extends StatefulWidget {
//   CustomButton({this.title, this.isActive, this.onTap});

//   String title;
//   bool isActive;
//   Function onTap;

//   @override
//   _CustomButtonState createState() => _CustomButtonState();
// }

// class _CustomButtonState extends State<CustomButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//       child: Container(
//         height: 40,
//         width: double.infinity,
//         child: MaterialButton(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           color: widget.isActive
//               ? MonitorThemeData().primaryActive
//               : MonitorThemeData().primaryBlueDisable,
//           child: Text(
//             widget.title,
//             style: AppTextStyles.primaryAvetaFontW(
//                 fontSize: 14,
//                 fontWeight: FontWeight.w600,
//                 color: widget.isActive
//                     ? MonitorThemeData().textWhite
//                     : MonitorThemeData().neutral2),
//           ),
//           onPressed: () {
//             if (widget.isActive) {
//               widget.onTap();
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

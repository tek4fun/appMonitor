// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BoxLabelValue extends StatefulWidget {
//   final String labelText;
//   final TextStyle labelStyle;
//   final String valueText;
//   final TextStyle valueStyle;
//   final Widget suffix;
//   final EdgeInsets padding;

//   BoxLabelValue({
//     Key key,
//     this.labelText = '',
//     this.labelStyle,
//     this.valueText = '',
//     this.valueStyle,
//     this.suffix,
//     this.padding,
//   }) : super(key: key);

//   @override
//   _BoxLabelValueState createState() => _BoxLabelValueState();
// }

// class _BoxLabelValueState extends State<BoxLabelValue> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: widget.padding ??
//           EdgeInsets.symmetric(
//             vertical: 10,
//             horizontal: width(context, 12),
//           ),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 3,
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Expanded(
//                   child: Text(
//                     widget.labelText,
//                     style: widget.labelStyle ??
//                         AppTextStyles.primaryAvetaFontW(
//                             color: MonitorThemeData().neutral2,
//                             fontWeight: FontWeight.w400,
//                             fontSize: 14),
//                   ),
//                 ),
//                 Container(
//                   child: widget.suffix,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 2,
//             child: Container(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 widget.valueText,
//                 style: widget.valueStyle ??
//                     AppTextStyles.primaryAvetaFontW(
//                         color: MonitorThemeData().neutral1,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

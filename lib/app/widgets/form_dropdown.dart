// import 'package:MbsApp/domain/models/select_data.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/pages/detail_sec/page/widgets/texts.dart';
// import 'package:MbsApp/pages/widgets/dropdown.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';

// typedef onChange = Function(SelectData);

// class FormDropDownCustom extends StatefulWidget {
//   final String labelText;
//   final Color labelTextColor;
//   final Function onChange;
//   final String textHint;
//   final Color hintTextColor;
//   final Color bgColor;
//   final SelectData value;
//   final List<SelectData> lstValue;
//   final bool readOnly;

//   FormDropDownCustom({
//     Key key,
//     this.labelText = '',
//     this.labelTextColor,
//     this.onChange,
//     this.value,
//     this.lstValue,
//     this.textHint,
//     this.hintTextColor,
//     this.bgColor,
//     this.readOnly = false,
//   }) : super(key: key);

//   @override
//   _FormDropDownCustomState createState() => _FormDropDownCustomState();
// }

// class _FormDropDownCustomState extends State<FormDropDownCustom> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   void didUpdateWidget(FormDropDownCustom oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (oldWidget.lstValue != widget.lstValue ||
//         oldWidget.value != widget.value) {
//       this.setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Visibility(
//           visible: widget.labelText.isNotEmpty,
//           child: Expanded(
//             flex: 2,
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Expanded(
//                   child: Texts.avertaNormal(widget.labelText,
//                       color:
//                           widget.labelTextColor ?? MonitorThemeData().neutral2),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 3,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Container(
//               width: getWidth(context) * 0.6,
//               height: 40,
//               alignment: Alignment.center,
//               padding: EdgeInsets.symmetric(horizontal: width(context, 8)),
//               decoration: BoxDecoration(
//                 color: widget.bgColor ?? MonitorThemeData().bgElevated1,
//                 border:
//                     Border.all(color: MonitorThemeData().bgElevated3, width: 1),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: DropDownCustom(
//                 hint: widget.readOnly ? widget?.value?.title : widget.textHint,
//                 hintColor: widget.hintTextColor ?? MonitorThemeData().neutral3,
//                 onChanged: widget.readOnly ? null : widget.onChange,
//                 value: widget.readOnly ? null : widget.value,
//                 lts: widget.readOnly ? [] : widget.lstValue,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

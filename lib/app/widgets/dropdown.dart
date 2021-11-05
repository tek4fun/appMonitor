// import 'package:MbsApp/domain/models/select_data.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';

// class DropDownCustom extends StatefulWidget {
//   final String hint;
//   final Function(SelectData) onChanged;
//   final SelectData value;
//   final List<SelectData> lts;
//   final bool isExpanded;
//   final Color iconColor;
//   final Color textColor;
//   final Color hintColor;
//   final TextStyle hintStyle;
//   final Icon icon;

//   const DropDownCustom({
//     Key key,
//     this.hint,
//     this.onChanged,
//     this.value,
//     this.lts,
//     this.isExpanded = true,
//     this.iconColor,
//     this.textColor,
//     this.hintColor,
//     this.hintStyle,
//     this.icon,
//   }) : super(key: key);

//   @override
//   _DropDownCustomState createState() => _DropDownCustomState();
// }

// class _DropDownCustomState extends State<DropDownCustom> {
//   SelectData selectedValue;
//   List<SelectData> list;

//   @override
//   void initState() {
//     selectedValue = widget.value;
//     list = widget.lts ?? [];
//     super.initState();
//   }

//   @override
//   void didUpdateWidget(DropDownCustom oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (oldWidget.value != widget.value) {
//       selectedValue = widget.value;
//       this.setState(() {});
//     }
//     if (oldWidget.lts != widget.lts) {
//       list = widget.lts;
//       this.setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<SelectData>(
//       hint: Text(
//         widget.hint?.tr() ?? '',
//         style: widget.hintStyle ??
//             AppTextStyles.avertaRegular(
//               fontSize: 14,
//               color: widget.hintColor ?? MonitorThemeData().neutral2,
//             ),
//       ),
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       isDense: true,
//       underline: SizedBox(),
//       isExpanded: widget.isExpanded,
//       icon: widget.icon ??
//           Icon(
//             Icons.expand_more,
//             color: widget.iconColor ?? MonitorThemeData().neutral2,
//           ),
//       value: selectedValue,
//       style: widget.hintStyle ??
//           AppTextStyles.avertaRegular(
//             fontSize: 14,
//             color: widget.textColor ?? MonitorThemeData().neutral1,
//           ),
//       onChanged: (SelectData value) {
//         widget.onChanged(value);
//         setState(() => selectedValue = value);
//       },
//       items: list.map((SelectData i) {
//         return DropdownMenuItem<SelectData>(
//           child: Text(
//             i.title?.tr() ?? '',
//             maxLines: 1,
//             style: widget.hintStyle ??
//                 AppTextStyles.avertaRegular(
//                   fontSize: 14,
//                   color: widget.textColor ?? MonitorThemeData().neutral1,
//                 ),
//           ),
//           value: i,
//         );
//       }).toList(),
//     );
//   }
// }

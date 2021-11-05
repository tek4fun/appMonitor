// import 'package:MbsApp/generated/locale_keys.g.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/pages/detail_sec/page/widgets/texts.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';

// typedef VoidChangeDate = Function(DateTime);

// class FormDatePicker extends StatefulWidget {
//   final String labelText;
//   final Color labelTextColor;
//   final DateTime date;
//   final VoidChangeDate onchanged;

//   FormDatePicker({
//     Key key,
//     this.labelText = '',
//     this.labelTextColor,
//     this.date,
//     this.onchanged,
//   }) : super(key: key);

//   @override
//   _FormDatePickerState createState() => _FormDatePickerState();
// }

// class _FormDatePickerState extends State<FormDatePicker> {
//   DateTime _date;

//   @override
//   void initState() {
//     super.initState();
//     _date = widget.date;
//   }

//   @override
//   void dispose() {
//     super.dispose();
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
//           child: InkWell(
//             onTap: () {
//               _showDateTimePicker(
//                   currentTime: _date,
//                   confirmDate: (DateTime date) {
//                     setState(() {
//                       _date = date;
//                     });
//                     widget.onchanged(date);
//                   });
//             },
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Container(
//                 height: 40,
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.symmetric(horizontal: width(context, 8)),
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                         color: MonitorThemeData().bgElevated3, width: 1),
//                     borderRadius: BorderRadius.circular(8),
//                     color: MonitorThemeData().bgElevated1),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Texts.avertaNormal(
//                           _date != null
//                               ? DateFormat.yMd('vi').format(_date)
//                               : LocaleKeys.choose_date.tr(),
//                           color: _date != null
//                               ? MonitorThemeData().neutral1
//                               : MonitorThemeData().neutral3),
//                     ),
//                     const SizedBox(width: 8),
//                     Image.asset(
//                       AppPath.icCalender,
//                       height: 20,
//                       width: 20,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   void _showDateTimePicker(
//       {DateTime currentTime, Function(DateTime) confirmDate}) async {
//     DateTime selectedDate = await showDatePicker(
//         context: context,
//         locale: context.locale,
//         initialDate: currentTime,
//         firstDate: DateTime(1970),
//         lastDate: DateTime(9999),
//         currentDate: currentTime,
//         builder: (BuildContext context, Widget child) {
//           return Theme(
//             data: ThemeData.dark(),
//             child: child,
//           );
//         });
//     if (selectedDate != null) {
//       confirmDate(selectedDate);
//     }
//   }
// }

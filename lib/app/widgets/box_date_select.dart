// import 'package:MbsApp/global/app_path.dart';
// import 'package:MbsApp/global/dimension.dart';
// import 'package:MbsApp/pages/detail_sec/page/widgets/texts.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:MbsApp/extension/extension.dart';

// typedef VoidChangeDate = Function(DateTime);

// class BoxDateSelectRow extends StatefulWidget {
//   const BoxDateSelectRow({
//     this.initDate,
//     this.onchanged,
//     this.isDisabled = false,
//     this.firstDate,
//     this.lastDate,
//     this.label,
//     this.labelTextColor,
//     this.bgColor,
//   });

//   final DateTime initDate;
//   final VoidChangeDate onchanged;
//   final bool isDisabled;
//   final DateTime firstDate;
//   final DateTime lastDate;
//   final String label;
//   final Color labelTextColor;
//   final Color bgColor;

//   @override
//   _BoxDateSelectRowState createState() => _BoxDateSelectRowState();
// }

// class _BoxDateSelectRowState extends State<BoxDateSelectRow> {
//   ValueNotifier<DateTime> _currentTime = ValueNotifier(DateTime.now());

//   @override
//   void initState() {
//     super.initState();
//     _currentTime.value = widget.initDate;
//   }

//   @override
//   void dispose() {
//     _currentTime.dispose();
//     super.dispose();
//   }

//   void _showDateTimePicker({Function(DateTime) onSelectDate}) async {
//     DateTime selectedDate = await showDatePicker(
//         context: context,
//         locale: context.locale,
//         initialDate: widget.initDate,
//         firstDate: widget.firstDate ?? DateTime(1970),
//         lastDate: widget.lastDate ?? DateTime(9999),
//         currentDate: _currentTime.value,
//         builder: (BuildContext context, Widget child) {
//           return Theme(
//             data: ThemeData.dark(),
//             child: child,
//           );
//         });

//     if (selectedDate != null) {
//       if (widget.onchanged != null) widget.onchanged(selectedDate);

//       _currentTime.value = selectedDate;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Expanded(
//           child: Texts.avertaNormal(widget.label,
//               color: widget.labelTextColor ?? MonitorThemeData().neutral2),
//         ),
//         ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: InkWell(
//             onTap: () => _showDateTimePicker(onSelectDate: (date) {}),
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
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   ValueListenableBuilder<DateTime>(
//                       valueListenable: _currentTime,
//                       builder: (BuildContext context, DateTime dateTime,
//                           Widget child) {
//                         return Text(dateTime.formatDDMMYYY());
//                       }),
//                   Image.asset(
//                     AppPath.icCalender,
//                     height: 20,
//                     width: 20,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

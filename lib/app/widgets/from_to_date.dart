// import 'package:MbsApp/generated/locale_keys.g.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/pages/detail_sec/page/widgets/texts.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';

// typedef VoidChangeDate = Function(DateTime, DateTime);

// class FromToDateView extends StatefulWidget {
//   const FromToDateView(
//       {this.fromDate,
//       this.toDate,
//       this.onchanged,
//       this.isDisabled = false,
//       this.firstDate,
//       this.lastDate});

//   final DateTime fromDate;
//   final DateTime toDate;
//   final VoidChangeDate onchanged;
//   final bool isDisabled;
//   final DateTime firstDate;
//   final DateTime lastDate;

//   @override
//   _FromToDateViewState createState() => _FromToDateViewState();
// }

// class _FromToDateViewState extends State<FromToDateView> {
//   DateTime _fromDate;
//   DateTime _toDate;

//   @override
//   void initState() {
//     super.initState();
//     _fromDate = widget.fromDate;
//     _toDate = widget.toDate;
//   }

//   @override
//   void didUpdateWidget(FromToDateView oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (oldWidget.fromDate != widget.fromDate) {
//       _fromDate = widget.fromDate;

//       this.setState(() {});
//     }

//     if (oldWidget.toDate != widget.toDate) {
//       _toDate = widget.toDate;
//       this.setState(() {});
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: InkWell(
//               onTap: widget.isDisabled
//                   ? null
//                   : () {
//                       _showDateTimePicker(
//                           currentTime: _fromDate,
//                           confirmDate: (DateTime date) {
//                             setState(() {
//                               _fromDate = date;
//                             });
//                             widget.onchanged(date, _toDate);
//                           });
//                     },
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Container(
//                   height: 40,
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.symmetric(horizontal: width(context, 8)),
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                           color: MonitorThemeData().bgElevated3, width: 1),
//                       borderRadius: BorderRadius.circular(8),
//                       color: MonitorThemeData().bgElevated1),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Texts.avertaNormal(
//                             _fromDate != null
//                                 ? DateFormat.yMd('vi').format(_fromDate)
//                                 : LocaleKeys.choose_date.tr(),
//                             color: widget.isDisabled
//                                 ? MonitorThemeData().neutral2
//                                 : _fromDate != null
//                                     ? MonitorThemeData().neutral1
//                                     : MonitorThemeData().neutral3),
//                       ),
//                       const SizedBox(width: 8),
//                       Image.asset(
//                         AppPath.icCalender,
//                         height: 20,
//                         width: 20,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 12.0, right: 12.0),
//             child: SizedBox(
//               child: Container(color: MonitorThemeData().neutral3),
//               height: 2,
//               width: 15,
//             ),
//           ),
//           Expanded(
//             child: InkWell(
//               onTap: widget.isDisabled
//                   ? null
//                   : () {
//                       _showDateTimePicker(
//                           currentTime: _toDate,
//                           confirmDate: (DateTime date) {
//                             setState(() {
//                               _toDate = date;
//                             });
//                             widget.onchanged(_fromDate, date);
//                           });
//                     },
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(8),
//                 child: Container(
//                   height: 40,
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.symmetric(horizontal: width(context, 8)),
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                           color: MonitorThemeData().bgElevated3, width: 1),
//                       borderRadius: BorderRadius.circular(8),
//                       color: MonitorThemeData().bgElevated1),
//                   child: Row(
//                     children: [
//                       Expanded(
//                           child: Texts.avertaNormal(
//                               _toDate != null
//                                   ? DateFormat.yMd('vi').format(_toDate)
//                                   : LocaleKeys.choose_date.tr(),
//                               color: widget.isDisabled
//                                   ? MonitorThemeData().neutral2
//                                   : _toDate != null
//                                       ? MonitorThemeData().neutral1
//                                       : MonitorThemeData().neutral3)),
//                       const SizedBox(width: 8),
//                       Image.asset(
//                         AppPath.icCalender,
//                         height: 20,
//                         width: 20,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showDateTimePicker(
//       {DateTime currentTime, Function(DateTime) confirmDate}) async {
//     DateTime selectedDate = await showDatePicker(
//         context: context,
//         locale: context.locale,
//         initialDate: currentTime,
//         firstDate: widget.firstDate ?? DateTime(1970),
//         lastDate: widget.lastDate ?? DateTime(9999),
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

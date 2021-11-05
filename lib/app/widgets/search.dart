// import 'package:MbsApp/extension/upper_text_formatter.dart';
// import 'package:MbsApp/global/dimension.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';
// import 'package:MbsApp/generated/locale_keys.g.dart';
// import 'package:easy_localization/easy_localization.dart';

// class Search extends StatefulWidget {
//   final TextEditingController editingController;
//   final Function onSubmitted;
//   final Function onChangeText;
//   final FocusNode focusNode;
//   final EdgeInsetsGeometry padding;
//   final String hint;
//   final Color background;
//   final Function onClean;
//   final isIconClean;

//   Search({
//     Key key,
//     this.editingController,
//     this.onSubmitted,
//     this.onChangeText,
//     this.focusNode,
//     this.padding,
//     this.hint,
//     this.background,
//     this.onClean,
//     this.isIconClean = false,
//   }) : super(key: key);

//   @override
//   _SearchState createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
//   void onPressClean() {
//     if (widget.onClean != null) widget.onClean();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     AppTheme.singleton.appTheme.listen((AppThemeType value) {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: widget.background ?? MonitorThemeData().bgElevated1,
//       child: Padding(
//         padding: widget.padding ??
//             EdgeInsets.only(
//               left: width(context, 12.0),
//               right: width(context, 12.0),
//               top: 12,
//             ),
//         child: Column(
//           children: [
//             Container(
//               height: 40.0,
//               child: TextField(
//                 controller: widget.editingController,
//                 style: AppTextStyles.avertaRegular(
//                   color: MonitorThemeData().neutral1,
//                 ),
//                 cursorColor: MonitorThemeData().whiteColor,
//                 focusNode: widget.focusNode,
//                 onSubmitted: widget.onSubmitted,
//                 onChanged: widget.onChangeText,
//                 textCapitalization: TextCapitalization.characters,
//                 keyboardType: TextInputType.visiblePassword,
//                 autocorrect: false,
//                 inputFormatters: [UpperCaseTextFormatter()],
//                 decoration: InputDecoration(
//                   fillColor: MonitorThemeData().bgElevated2,
//                   filled: true,
//                   suffixIcon: widget.isIconClean
//                       ? null
//                       : InkWell(
//                           onTap: onPressClean,
//                           child: Icon(
//                             Icons.backspace,
//                             size: 15,
//                             color: MonitorThemeData().whiteColor,
//                           ),
//                         ),
//                   hintText:
//                       widget.hint ?? "${LocaleKeys.search_stock_code.tr()}",
//                   hintStyle: TextStyle(
//                     color: MonitorThemeData().whiteColor,
//                   ),
//                   contentPadding: EdgeInsets.all(0.0),
//                   prefixIcon: Icon(
//                     Icons.search,
//                     color: MonitorThemeData().whiteColor,
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: BorderSide(
//                       color: MonitorThemeData().bgElevated3,
//                       width: 1.0,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: BorderSide(
//                       color: MonitorThemeData().primaryActive,
//                       width: 1.0,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';

// class DialogWrap extends StatelessWidget {
//   final Widget child;
//   final Widget contentDialog;
//   final bool barrierDismissible;

//   const DialogWrap({
//     Key key,
//     this.child,
//     this.contentDialog,
//     this.barrierDismissible = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => showDialog(context),
//       child: child,
//     );
//   }

//   Widget _buildNewTransition(
//     BuildContext context,
//     Animation<double> animation,
//     Animation<double> secondaryAnimation,
//     Widget child,
//   ) {
//     double curvedValue = Curves.easeInOutBack.transform(animation.value) - 1.0;
//     return Transform(
//       transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
//       child: Opacity(
//         opacity: animation.value,
//         child: child,
//       ),
//     );
//   }

//   void showDialog(BuildContext context) {
//     showGeneralDialog(
//       context: context,
//       barrierDismissible: barrierDismissible,
//       barrierLabel: "DialogWrap",
//       transitionDuration: Duration(milliseconds: 400),
//       transitionBuilder: _buildNewTransition,
//       pageBuilder: (_, __, ___) {
//         return Scaffold(
//           backgroundColor: Colors.black12.withOpacity(0.6),
//           body: InkWell(
//             onTap: () => Navigator.pop(context),
//             splashColor: Colors.transparent,
//             highlightColor: Colors.transparent,
//             child: Container(
//               height: double.infinity,
//               width: double.infinity,
//               child: Center(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: width(context, 12.0),
//                       vertical: height(context, 16.0),
//                     ),
//                     margin: EdgeInsets.symmetric(
//                       horizontal: width(context, 12.0),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color:
//                           AppTheme.singleton.currentTheme == AppThemeType.Light
//                               ? AppColors.bgLightElevated1
//                               : MonitorThemeData().bgElevated2,
//                     ),
//                     child: contentDialog,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

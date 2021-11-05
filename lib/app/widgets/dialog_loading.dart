// import 'dart:async';

// import 'package:MbsApp/blocs/bloc.dart';
// import 'package:MbsApp/global/dimension.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// void dialogLoading(BuildContext context, {bool barrierDismissible = false}) {
//   showGeneralDialog(
//     context: context,
//     barrierDismissible: barrierDismissible,
//     barrierLabel: "Dialog",
//     transitionDuration: Duration(milliseconds: 400),
//     pageBuilder: (_, __, ___) {
//       return Scaffold(
//         backgroundColor: Colors.black12.withOpacity(0.6),
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           child: Center(
//             child: SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: width(context, 16.0),
//                   vertical: width(context, 16.0),
//                 ),
//                 child: Lottie.asset(
//                   AppPath.loading,
//                   width: 32,
//                   height: 32,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }

// mixin ProgressDialogMixin<T extends StatefulWidget> on State<T> {
//   StreamSubscription<bool> _loadingStreamSubcription;
//   Stream<bool> _loadingStream;
//   bool isShow = false;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _loadingStreamSubcription?.cancel();
//     super.dispose();
//   }

//   @override
//   void didUpdateWidget(covariant T oldWidget) {
//     super.didUpdateWidget(oldWidget);
//   }

//   void showLoading() {
//     isShow = true;
//     dialogLoading(context);
//   }

//   void hideLoading() {
//     Navigator.of(context).pop();
//   }

//   void setLoadingPrefer(LoadingPrefer loadingPrefer) {
//     _loadingStream = loadingPrefer.loadingStream;
//     _listen();
//   }

//   void _listen() {
//     _loadingStreamSubcription = _loadingStream.listen((bool show) {
//       if (mounted) {
//         if (show) {
//           showLoading();
//         } else {
//           hideLoading();
//         }
//       }
//     });
//   }
// }

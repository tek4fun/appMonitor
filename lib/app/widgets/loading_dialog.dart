// import 'package:MbsApp/global/global.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class LoadingDialog extends StatefulWidget {
//   @override
//   _LoadingDialogState createState() => _LoadingDialogState();
// }

// class _LoadingDialogState extends State<LoadingDialog> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black12.withOpacity(0.6),
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: Center(
//           child: SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.symmetric(
//                 horizontal: width(context, 16.0),
//                 vertical: width(context, 16.0),
//               ),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 color: AppColors.bgElevated2,
//               ),
//               child: Lottie.asset(
//                 AppPath.loading,
//                 width: 32,
//                 height: 32,
//                 fit: BoxFit.fill,
//                 // options: LottieOptions(enableMergePaths: true),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

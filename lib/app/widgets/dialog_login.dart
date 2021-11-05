// import 'package:MbsApp/pages/login/login_page.dart';
// import 'package:MbsApp/pages/widgets/app_alert_dialog.dart';
// import 'package:flutter/material.dart';

// void showLoginButton(BuildContext context, {Function callback}) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) => MbsAlertDialog(
//       title: 'Đăng nhập',
//       des: 'Bạn phải đăng nhập để sử dụng tính năng này.',
//       accept: () async {
//         var result = await Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => LoginPage()),
//         );

//         Navigator.pop(context);

//         if (result != null) {
//           callback(result);
//         }
//       },
//       isAccept: false,
//     ),
//   );
// }

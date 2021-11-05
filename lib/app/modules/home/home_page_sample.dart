// import 'package:app_monitors/app/core/translations/app_translations.dart';
// import 'package:app_monitors/app/modules/home/controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeScreenSample extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _HomeScreenState();
//   }
// }

// class _HomeScreenState extends State<HomeScreenSample> {
//   String _selectedLang = LocalizationService.locale.languageCode;
//   // Inject home page controller
//   final HomePageController homeController = Get.find<HomePageController>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('greet'.tr),
//       ),
//       body: Container(
//           child: Column(
//         children: [
//           Center(
//             child: DropdownButton<String>(
//               icon: Icon(Icons.arrow_drop_down),
//               value: _selectedLang,
//               items: _buildDropdownMenuItems(),
//               onChanged: (String? value) {
//                 setState(() => _selectedLang = value ?? '');
//                 LocalizationService.changeLocale(value ?? '');
//               },
//             ),
//           ),
//           Text("API sample result"),
//           // call value from controller
//           Obx(() => Text('User id: ${homeController.item.value.userId}')),
//           Obx(() => Text('Title: ${homeController.item.value.title}')),
//         ],
//       )),
//     );
//   }

//   List<DropdownMenuItem<String>> _buildDropdownMenuItems() {
//     var list = <DropdownMenuItem<String>>[];
//     LocalizationService.langs.forEach((key, value) {
//       list.add(DropdownMenuItem<String>(
//         value: key,
//         child: Text(key),
//       ));
//     });
//     return list;
//   }
// }

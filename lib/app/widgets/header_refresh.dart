// import 'package:MbsApp/global/app_path.dart';
// import 'package:flutter/widgets.dart';
// import 'package:lottie/lottie.dart';
// import 'package:pull_to_refresh/pull_to_refresh.dart';
// import 'package:flutter/material.dart'
//     hide RefreshIndicator, RefreshIndicatorState;

// class HeaderRefresh extends RefreshIndicator {
//   HeaderRefresh() : super(height: 80.0, refreshStyle: RefreshStyle.Follow);
//   @override
//   State<StatefulWidget> createState() {
//     return HeaderRefreshState();
//   }
// }

// class HeaderRefreshState extends RefreshIndicatorState<HeaderRefresh>
//     with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void onModeChange(RefreshStatus mode) {
//     super.onModeChange(mode);
//   }

//   @override
//   Future<void> endRefresh() {
//     return super.endRefresh();
//   }

//   @override
//   void resetValue() {
//     super.resetValue();
//   }

//   @override
//   Widget buildContent(BuildContext context, RefreshStatus mode) {
//     return Container(
//       child: Center(
//         child: Lottie.asset(
//           AppPath.loading,
//           width: 32,
//           height: 32,
//           fit: BoxFit.fill,
//           // options: LottieOptions(enableMergePaths: true),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }
// }

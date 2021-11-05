// import 'package:MbsApp/global/global.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';

// class CustomTabView extends StatefulWidget {
//   const CustomTabView({
//     @required this.itemCount,
//     @required this.tabBuilder,
//     @required this.pageBuilder,
//     this.stub,
//     this.onPositionChange,
//     this.onScroll,
//     this.initPosition,
//     this.isScrollable = false,
//     this.isIndicatorColor = true,
//     this.unselectedLabelColor,
//     this.isBottomBorder = true,
//     this.isIndicator = true,
//   });

//   final int itemCount;
//   final IndexedWidgetBuilder tabBuilder;
//   final IndexedWidgetBuilder pageBuilder;
//   final Widget stub;
//   final ValueChanged<int> onPositionChange;
//   final ValueChanged<double> onScroll;
//   final int initPosition;
//   final isScrollable;
//   final bool isIndicatorColor;
//   final Color unselectedLabelColor;
//   final bool isBottomBorder;
//   final bool isIndicator;

//   @override
//   _CustomTabsState createState() => _CustomTabsState();
// }

// class _CustomTabsState extends State<CustomTabView>
//     with TickerProviderStateMixin {
//   TabController controller;
//   int _currentCount;
//   int _currentPosition;

//   @override
//   void initState() {
//     _currentPosition = widget.initPosition ?? 0;
//     controller = TabController(
//       length: widget.itemCount,
//       vsync: this,
//       initialIndex: _currentPosition,
//     );
//     controller.addListener(onPositionChange);
//     controller.animation.addListener(onScroll);
//     _currentCount = widget.itemCount;
//     super.initState();
//   }

//   @override
//   void didUpdateWidget(CustomTabView oldWidget) {
//     if (_currentCount != widget.itemCount) {
//       controller.animation.removeListener(onScroll);
//       controller.removeListener(onPositionChange);
//       controller.dispose();

//       if (widget.initPosition != null) {
//         _currentPosition = widget.initPosition;
//       }

//       if (_currentPosition > widget.itemCount - 1) {
//         _currentPosition = widget.itemCount - 1;
//         _currentPosition = _currentPosition < 0 ? 0 : _currentPosition;
//         if (widget.onPositionChange is ValueChanged<int>) {
//           WidgetsBinding.instance.addPostFrameCallback((_) {
//             if (mounted) {
//               widget.onPositionChange(_currentPosition);
//             }
//           });
//         }
//       }

//       _currentCount = widget.itemCount;
//       setState(() {
//         controller = TabController(
//           length: widget.itemCount,
//           vsync: this,
//           initialIndex: _currentPosition,
//         );
//         controller.addListener(onPositionChange);
//         controller.animation.addListener(onScroll);
//       });
//     } else if (widget.initPosition != null) {
//       controller.animateTo(widget.initPosition);
//     }

//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   void dispose() {
//     controller.animation.removeListener(onScroll);
//     controller.removeListener(onPositionChange);
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (widget.itemCount < 1) return widget.stub ?? Container();

//     return Column(
//       // crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Container(
//           height: 36,
//           alignment: Alignment.center,
//           child: TabBar(
//             isScrollable: widget.isScrollable,
//             controller: controller,
//             labelColor: MonitorThemeData().primaryActive,
//             unselectedLabelColor:
//                 widget.unselectedLabelColor ?? MonitorThemeData().neutral1,
//             labelPadding: EdgeInsets.only(
//               right: width(context, 8.0),
//               left: width(context, 8.0),
//             ),
//             indicatorSize: TabBarIndicatorSize.label,
//             indicator: widget.isBottomBorder
//                 ? BoxDecoration(
//                     border: Border(
//                       bottom: BorderSide(
//                         color: widget.isIndicatorColor
//                             ? MonitorThemeData().primaryActive
//                             : Colors.transparent,
//                         width: 2,
//                       ),
//                     ),
//                   )
//                 : BoxDecoration(
//                     borderRadius: BorderRadius.circular(4),
//                     color: MonitorThemeData().bgElevated2,
//                     border: Border.all(
//                       color: MonitorThemeData().primaryActive,
//                     ),
//                   ),
//             tabs: List.generate(
//               widget.itemCount,
//               (int index) => widget.tabBuilder(context, index),
//             ),
//           ),
//         ),
//         _indicator(),
//         Expanded(
//           child: TabBarView(
//             controller: controller,
//             children: List.generate(
//               widget.itemCount,
//               (int index) => widget.pageBuilder(context, index),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _indicator() {
//     return Divider(
//       color: widget.isIndicator
//           ? MonitorThemeData().bgElevated1
//           : Colors.transparent,
//       height: 1,
//       thickness: 1,
//     );
//   }

//   void onPositionChange() {
//     if (!controller.indexIsChanging) {
//       _currentPosition = controller.index;
//       if (widget.onPositionChange is ValueChanged<int>) {
//         widget.onPositionChange(_currentPosition);
//       }
//     }
//   }

//   void onScroll() {
//     if (widget.onScroll is ValueChanged<double>) {
//       widget.onScroll(controller.animation.value);
//     }
//   }
// }

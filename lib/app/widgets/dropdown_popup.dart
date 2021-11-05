// import 'package:MbsApp/global/app_path.dart';
// import 'package:MbsApp/global/dimension.dart';
// import 'package:MbsApp/global/global.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class CountryDropdownMenuItem<T> extends PopupMenuEntry<T> {
//   const CountryDropdownMenuItem({
//     Key key,
//     this.value,
//     this.img,
//     @required this.text,
//   })  : assert(text != null),
//         super(key: key);

//   final T value;

//   final String text;
//   final String img;

//   @override
//   _DropdownMenuItemState<T> createState() => _DropdownMenuItemState<T>();

//   @override
//   double get height => 32.0;

//   @override
//   bool represents(T value) => this.value == value;
// }

// class _DropdownMenuItemState<T> extends State<CountryDropdownMenuItem<T>> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.of(context).pop<T>(widget.value),
//       child: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               widget.text,
//               style: AppTextStyles.lightTheme12CaptionRegularNeutral,
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: width(context, 8)),
//               child: Container(
//                 height: 28,
//                 width: 42,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4.0),
//                     image: DecorationImage(
//                         image: AssetImage(widget.img), fit: BoxFit.fill)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DropdownDivider<T> extends PopupMenuEntry<T> {
//   @override
//   _DropdownDividerState<T> createState() => _DropdownDividerState<T>();

//   @override
//   double get height => 1.0;

//   @override
//   bool represents(T value) => false;
// }

// class _DropdownDividerState<T> extends State<DropdownDivider<T>> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 0.0),
//       child: Divider(height: 1.0, color: AppColors.border2),
//     );
//   }
// }

// class DropdownMenu<T> extends StatefulWidget {
//   const DropdownMenu({
//     Key key,
//     @required this.itemBuilder,
//     this.initialValue,
//     this.onSelected,
//     this.onCanceled,
//     @required this.child,
//   }) : super(key: key);

//   final PopupMenuItemBuilder<T> itemBuilder;
//   final T initialValue;
//   final PopupMenuItemSelected<T> onSelected;
//   final PopupMenuCanceled onCanceled;
//   final Widget child;

//   @override
//   _DropdownMenuState<T> createState() => _DropdownMenuState<T>();
// }

// class _DropdownMenuState<T> extends State<DropdownMenu<T>>
//     with TickerProviderStateMixin {
//   // AnimationController _controller;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         return Container(
//           padding: EdgeInsets.only(right: 12.0, left: 24),
//           child: GestureDetector(
//             onTap: _showPopup,
//             // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//             // colorBrightness: Brightness.dark,
//             child: Row(
//               key: Key(widget.initialValue?.toString() ?? 'TEST'),
//               mainAxisSize: constraints.hasTightWidth
//                   ? MainAxisSize.max
//                   : MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 widget.child,
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showPopup() {
//     final RenderBox button = context.findRenderObject();
//     final RenderBox overlay = Overlay.of(context).context.findRenderObject();
//     final Rect position = Rect.fromPoints(
//       button.localToGlobal(Offset.zero, ancestor: overlay),
//       button.localToGlobal(button.size.bottomRight(Offset.zero),
//           ancestor: overlay),
//     );
//     final buttonColor = Theme.of(context).buttonColor;
//     final route = _PopupMenuRoute<T>(
//       initialValue: widget.initialValue,
//       items: widget.itemBuilder(context),
//       position: position,
//       shadow:
//           BoxShadow(color: buttonColor, blurRadius: 6.0, spreadRadius: -2.0),
//     );
//     // _controller.forward();
//     Future.delayed(const Duration(milliseconds: 150), () {
//       return Navigator.of(context, rootNavigator: true)
//           .push<T>(route)
//           .then((T result) {
//         if (!mounted) {
//           return;
//         }
//         if (result == null) {
//           widget.onCanceled?.call();
//         } else {
//           widget.onSelected?.call(result);
//         }
//         // _controller.reverse();
//       });
//     });
//   }
// }

// class _PopupMenuRoute<T> extends PopupRoute<T> {
//   _PopupMenuRoute({
//     this.initialValue,
//     @required this.items,
//     @required this.position,
//     this.shadow = const BoxShadow(
//         color: Colors.black26, blurRadius: 6.0, spreadRadius: -2.0),
//   });

//   final List<PopupMenuEntry<T>> items;
//   final T initialValue;
//   final Rect position;

//   @override
//   Duration get transitionDuration => const Duration(milliseconds: 500);

//   @override
//   bool get barrierDismissible => true;

//   @override
//   Color get barrierColor => null;

//   @override
//   String get barrierLabel => null;

//   final BoxShadow shadow;

//   @override
//   Widget buildTransitions(BuildContext context, Animation<double> animation,
//       Animation<double> secondary, Widget child) {
//     final opacity =
//         CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
//     final top = Tween<double>(begin: position.top, end: position.bottom)
//         .animate(opacity);
//     return FadeTransition(
//       opacity: opacity,
//       child: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           return Stack(
//             children: <Widget>[
//               Positioned(
//                 top: top.value,
//                 left: position.left,
//                 width: position.width,
//                 child: ConstrainedBox(
//                   constraints: BoxConstraints(
//                     minWidth: position.width,
//                     maxWidth: position.width,
//                     minHeight: 0.0,
//                     maxHeight: constraints.maxHeight - position.bottom,
//                   ),
//                   child: child,
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Widget buildPage(BuildContext context, Animation<double> animation,
//       Animation<double> secondaryAnimation) {
//     return _PopupPanel(
//       items: items,
//       padding: EdgeInsets.only(top: 4.0),
//       shadow: shadow,
//     );
//   }
// }

// /// Popup panel of list items
// class _PopupPanel<T> extends StatelessWidget {
//   const _PopupPanel({
//     Key key,
//     @required this.items,
//     this.pointerPosition = 0.9,
//     this.pointerSize = 8.0,
//     this.padding,
//     this.shadow = const BoxShadow(
//         color: Colors.black26, blurRadius: 6.0, spreadRadius: -2.0),
//   })  : assert(padding != null),
//         super(key: key);

//   final List<PopupMenuEntry<T>> items;
//   final double pointerPosition;
//   final double pointerSize;
//   final EdgeInsets padding;
//   final BoxShadow shadow;

//   @override
//   Widget build(BuildContext context) {
//     final border = _PopupPanelBorder(
//       side: BorderSide(color: AppColors.border2, width: 1.0),
//       borderRadius: BorderRadius.circular(2.0),
//       pointerPosition: pointerPosition,
//       pointerSize: pointerSize,
//       color: AppColors.bgElevated1,
//       shadow: shadow,
//     );
//     return Padding(
//       padding: padding + EdgeInsets.only(top: pointerSize, bottom: pointerSize),
//       child: Container(
//         decoration: BoxDecoration(border: border),
//         child: Material(
//           type: MaterialType.transparency,
//           child: ListView(
//             primary: false,
//             padding: EdgeInsets.zero,
//             shrinkWrap: true,
//             children: items,
//           ),
//         ),
//       ),
//     );
//   }
// }

// /// Custom popup panel border with pointer positioned along the top edge.
// class _PopupPanelBorder extends BoxBorder {
//   const _PopupPanelBorder({
//     this.side = BorderSide.none,
//     this.borderRadius = BorderRadius.zero,
//     this.pointerPosition = 0.9,
//     this.pointerSize = 8.0,
//     this.color,
//     this.shadow,
//   })  : assert(side != null),
//         assert(borderRadius != null);

//   /// The style of this border.
//   final BorderSide side;

//   @override
//   BorderSide get top => side;

//   @override
//   BorderSide get bottom => side;

//   @override
//   bool get isUniform => true;

//   /// The radii for each corner.
//   final BorderRadiusGeometry borderRadius;

//   /// The fraction across the top edge the pointer should align to.
//   final double pointerPosition;

//   /// The size of the pointer in logical pixels.
//   final double pointerSize;

//   final Color color;

//   final BoxShadow shadow;

//   @override
//   EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

//   @override
//   ShapeBorder scale(double t) {
//     return _PopupPanelBorder(
//       side: side.scale(t),
//       borderRadius: borderRadius * t,
//     );
//   }

//   @override
//   Path getInnerPath(Rect rect, {TextDirection textDirection}) {
//     return getOuterPath(rect.deflate(side.width), textDirection: textDirection);
//   }

//   @override
//   Path getOuterPath(Rect rect, {TextDirection textDirection}) {
//     final radius = borderRadius.resolve(textDirection);
//     final roundedRect = radius.toRRect(rect);
//     final pointerRect = roundedRect.middleRect.inflate(-pointerSize);
//     final pointerPos = pointerRect.left +
//         (pointerRect.width * pointerPosition.clamp(0.0, 1.0));
//     return Path.combine(
//       PathOperation.union,
//       Path()..addRRect(roundedRect),
//       Path()
//         ..moveTo(pointerPos, rect.top - pointerSize)
//         ..lineTo(pointerPos + pointerSize, rect.top)
//         ..lineTo(pointerPos - pointerSize, rect.top)
//         ..close(),
//     );
//   }

//   @override
//   void paint(Canvas canvas, Rect rect,
//       {TextDirection textDirection,
//       BoxShape shape = BoxShape.rectangle,
//       BorderRadius borderRadius}) {
//     final path = getOuterPath(rect, textDirection: textDirection);
//     if (shadow != null) {
//       final scale = 1.0 + shadow.spreadRadius / 100;
//       final center = rect.center;
//       final m = Matrix4.translationValues(center.dx, center.dy, 0.0)
//         ..scale(scale, scale)
//         ..translate(-center.dx, -center.dy);
//       canvas.drawPath(path.transform(m.storage), shadow.toPaint());
//     }
//     if (color != null) {
//       canvas.drawPath(path, Paint()..color = color);
//     }
//     if (side.style == BorderStyle.solid) {
//       canvas.drawPath(path, side.toPaint());
//     }
//   }
// }

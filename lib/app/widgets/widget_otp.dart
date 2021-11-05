// import 'package:MbsApp/extension/upper_text_formatter.dart';
// import 'package:MbsApp/generated/locale_keys.g.dart';
// import 'package:MbsApp/pages/settings/pages/smart_otp/provider/sms_otp.dart';
// import 'package:MbsApp/singleton/theme_data.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter/services.dart';
// import 'package:easy_localization/easy_localization.dart';

// typedef ListenerFocus = void Function({bool visible});

// class WidgetOTP extends StatefulWidget {
//   final Function onFinish;
//   final Function onChange;
//   final ListenerFocus onListenerFocus;
//   final Function onError;

//   final String otpCode;
//   final bool autoFocus;
//   final bool enabled;
//   final bool obscureText;
//   final bool showSuggestAndroid;
//   final bool showSuggestIos;
//   final bool clearOTP;

//   final String otpCodeFromSms;

//   const WidgetOTP({
//     Key key,
//     this.onFinish,
//     this.onChange,
//     this.onError,
//     this.otpCode,
//     this.autoFocus = true,
//     this.enabled = true,
//     this.obscureText = true,
//     this.showSuggestAndroid = false,
//     this.onListenerFocus,
//     this.otpCodeFromSms,
//     this.showSuggestIos = false,
//     this.clearOTP = false,
//   }) : super(key: key);

//   @override
//   _WidgetOTPState createState() => _WidgetOTPState();
// }

// class _WidgetOTPState extends State<WidgetOTP> {
//   List<TextEditingController> controllerList;
//   List<FocusNode> focusNodeList;

//   int max = 6;

//   bool updateText = true;

//   OverlayEntry _overlayEntry;

//   Iterable<String> autofillHints;

//   String getString() {
//     return controllerList.map((e) => e.text).toList().join("");
//   }

//   void _listener(FocusNode focusNode) {
//     String code = getString();

//     if (widget.onChange != null) {
//       widget.onChange(code);
//     }
//     if (widget.onListenerFocus != null) {
//       widget.onListenerFocus(visible: focusNode.hasFocus);
//     }

//     if (widget.onError != null && code.length < max) {
//       widget.onError();
//     }

//     if (widget.showSuggestAndroid) {
//       focusNode.hasFocus ? showOverlay() : _overlayEntry.remove();
//     }
//   }

//   void onchange(String str, int index) {
//     //  Khi fill text vào form từ bên ngoài k cho chạy vào update
//     if (!updateText) {
//       return;
//     }

//     if (str.length >= 1 && index + 1 < focusNodeList.length) {
//       focusNodeList[index + 1].requestFocus();
//     } else if (str.length == 0 && index - 1 >= 0) {
//       focusNodeList[index - 1].requestFocus();
//     } else if (index + 1 == focusNodeList.length) {
//       focusNodeList[index].nextFocus();
//     }
//   }

//   void onTapFunc(int index) {
//     controllerList[index].selection =
//         TextSelection.collapsed(offset: controllerList[index].text.length);
//   }

//   void _handleKeyEvent(RawKeyEvent event) {
//     print(event);
//     if (event.data.logicalKey == LogicalKeyboardKey.delete) {
//       print("DELETE");
//     }
//   }

//   // Show suggestion cho android
//   void showOverlay() async {
//     OverlayState overlayState = Overlay.of(context);
//     _overlayEntry = OverlayEntry(
//       maintainState: true,
//       builder: (context) => Positioned(
//         bottom: MediaQuery.of(context).viewInsets.bottom,
//         right: 0,
//         left: 0,
//         child: Material(
//           child: buildSuggestion(),
//         ),
//       ),
//     );

//     overlayState.insert(_overlayEntry);
//   }

//   // Fill vao TextForm
//   void _fillOTP(String otp) {
//     if (otp == null || otp.isEmpty) {
//       return;
//     }

//     FocusScope.of(context).unfocus();

//     updateText = false;

//     for (int i = 0; i < controllerList.length; i++) {
//       String text = otp[i];
//       controllerList[i].text = text;
//     }

//     this.setState(() {});

//     if (widget.onFinish != null) widget.onFinish(otp);

//     updateText = true;

//     SmsOtp.instance().update("");
//   }

//   @override
//   void initState() {
//     super.initState();

//     controllerList = List<TextEditingController>.generate(max, (index) {
//       return TextEditingController();
//     });

//     focusNodeList = List<FocusNode>.generate(max, (index) {
//       FocusNode focusNode = FocusNode();
//       return focusNode..addListener(() => _listener(focusNode));
//     });

//     if (widget.autoFocus && widget.otpCode == null) {
//       focusNodeList[0].requestFocus();
//     }

//     RawKeyboard.instance.addListener(_handleKeyEvent);

//     if (widget.enabled) {
//       autofillHints = widget.showSuggestIos
//           ? [AutofillHints.oneTimeCode]
//           : [AutofillHints.username];
//     } else {
//       autofillHints = null;
//     }
//   }

//   @override
//   void didUpdateWidget(WidgetOTP oldWidget) {
//     super.didUpdateWidget(oldWidget);

//     if (oldWidget.otpCode != widget.otpCode) {
//       _fillOTP(widget.otpCode);
//     }

//     //  show suggestion sms cho android
//     if (oldWidget.showSuggestAndroid != widget.showSuggestAndroid) {
//       if (widget.showSuggestAndroid) {
//         SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
//           showOverlay();
//         });
//       }
//     }

//     // Xoá hết opt trên textform
//     if (widget.clearOTP) {
//       for (int i = 0; i < controllerList.length; i++) {
//         controllerList[i].text = "";

//         this.setState(() {});
//       }
//       return;
//     }

//     // Auto focus
//     if (oldWidget.autoFocus != widget.autoFocus && widget.autoFocus) {
//       focusNodeList[0].requestFocus();
//     }
//   }

//   @override
//   void dispose() {
//     controllerList.forEach((element) {
//       element.dispose();
//     });

//     focusNodeList.forEach((element) {
//       element.dispose();
//     });

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children:
//               List<Widget>.generate(max, (index) => buildOTP(index)).toList(),
//         ),
//       ],
//     );
//   }

//   Widget buildOTP(int index) {
//     return Container(
//       height: 40,
//       width: 40,
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: MonitorThemeData().bgElevated1,
//       ),
//       child: TextField(
//         obscureText: widget.obscureText,
//         style: TextStyle(
//           color: MonitorThemeData().neutral1,
//         ),
//         keyboardType: TextInputType.phone,
//         maxLength: 1,
//         autofillHints: autofillHints,
//         controller: controllerList[index],
//         focusNode: focusNodeList[index],
//         textAlign: TextAlign.center,
//         onTap: () => onTapFunc(index),
//         onChanged: (str) => onchange(str, index),
//         enabled: widget.enabled,
//         inputFormatters: [AutoFillIOS()],
//         decoration: InputDecoration(
//           counterText: "",
//           fillColor: MonitorThemeData().bgElevated2,
//           filled: true,
//           contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide:
//                 BorderSide(color: MonitorThemeData().neutral3, width: 1.0),
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide:
//                 BorderSide(color: MonitorThemeData().neutral3, width: 1.0),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: BorderSide(
//               color: MonitorThemeData().primaryActive,
//               width: 1.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildSuggestion() {
//     return InkWell(
//       onTap: () {
//         _fillOTP(widget.otpCodeFromSms);
//       },
//       child: Container(
//         height: 52,
//         padding: EdgeInsets.symmetric(vertical: 8),
//         alignment: Alignment.center,
//         child: Column(
//           children: [
//             Text(LocaleKeys.sms_otp.tr()),
//             Text(widget.otpCodeFromSms),
//           ],
//         ),
//       ),
//     );
//   }
// }

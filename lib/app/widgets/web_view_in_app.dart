// import 'dart:io';

// import 'package:MbsApp/global/app_text.dart';
// import 'package:MbsApp/pages/widgets/app_leading.dart';
// import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class WebViewInApp extends StatefulWidget {
//   final String url;
//   final String title;

//   const WebViewInApp(this.url, this.title);

//   @override
//   _WebViewInAppState createState() => _WebViewInAppState();
// }

// class _WebViewInAppState extends State<WebViewInApp> {
//   PDFDocument document;
//   bool showPdfView = false;
//   @override
//   void initState() {
//     super.initState();
//     if (Platform.isAndroid && (widget.url.endsWith('pdf') || widget.url.endsWith('PDF'))) {
//       setState(() => showPdfView = true);
//       _loadPdf();
//     }
//   }

//   _loadPdf() async {
//     document = await PDFDocument.fromURL(widget.url);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     debugPrint('url: ${widget.url}');
//     return Scaffold(
//         appBar: AppBar(
//           leading: AppLeading(
//             onPressed: () => Navigator.of(context).pop(),
//           ),
//           title: AppTexts.titleAppBar(widget.title),
//           centerTitle: true,
//         ),
//         body: _buildContentView());
//   }

//   Widget _buildContentView() {
//     return showPdfView
//         ? _buildPdfView()
//         : WebView(
//             initialUrl: widget.url,
//             javascriptMode: JavascriptMode.unrestricted,
//           );
//   }

//   Widget _buildPdfView() {
//     return document != null
//         ? PDFViewer(document: document ?? PDFDocument())
//         : Container();
//   }
// }

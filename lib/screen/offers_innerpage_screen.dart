import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class offersinnerpageScreen extends StatefulWidget {
  offersinnerpageScreen({Key? key}) : super(key: key);

  @override
  _offersinnerpageScreenState createState() => _offersinnerpageScreenState();
}

class _offersinnerpageScreenState extends State<offersinnerpageScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff1c1d22),
        title: Text(
          "Offers from Visa",
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'Poppins-Regular',
          ),
        ),
      ),
      body: WebView(
        initialUrl: 'https://www.wikipedia.org/',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}

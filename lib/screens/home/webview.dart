import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  final String title;
  final String selectedUrl;

  MyWebView(this.title, this.selectedUrl);

  @override
  _MyWebViewState createState() =>
      _MyWebViewState(title: title, selectedUrl: selectedUrl);
}

class _MyWebViewState extends State<MyWebView> {
  final String title;
  final String selectedUrl;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  _MyWebViewState({
    @required this.title,
    @required this.selectedUrl,
  });

  num _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: IndexedStack(
        //key: UniqueKey(),
        index: _stackToView,
        children: <Widget>[
          WebView(
            initialUrl: selectedUrl,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: _handleLoad,
          ),
          Center(
            child: Container(
              width: 60,
              height: 60,
              color: Colors.transparent,
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

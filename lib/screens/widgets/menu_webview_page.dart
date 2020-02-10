import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nssgh/screens/menus/main_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MenuWebViewPage extends StatelessWidget {
  final String title;
  final String selectedUrl;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  MenuWebViewPage({
    @required this.title,
    @required this.selectedUrl,
  });

  //ProgressDialog pr;

  @override
  Widget build(BuildContext context) {
    // pr = new ProgressDialog(context);
    // pr.style(
    //   //message: 'Please Waiting...',
    //   borderRadius: 10.0,
    //   backgroundColor: Colors.red,
    //   progressWidget: CircularProgressIndicator(),
    //   elevation: 10.0,
    //   insetAnimCurve: Curves.easeInOut,
    //   progress: 0.0,
    //   maxProgress: 100.0,
    //   // progressTextStyle: TextStyle(
    //   //     color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
    //   // messageTextStyle: TextStyle(
    //   //     color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600)
    // );

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        drawer: MainDrawer(),
        body: WebView(
              initialUrl: selectedUrl,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
                //pr.dismiss();
              },
            ),
        );
  }
}

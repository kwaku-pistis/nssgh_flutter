import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nssgh/screens/home/webview.dart';
import 'package:nssgh/screens/menus/about.dart';
import 'package:nssgh/screens/menus/contact_us.dart';
import 'package:nssgh/screens/menus/main_drawer.dart';
import 'package:package_info/package_info.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MenuWebViewPage extends StatefulWidget {
  final String title;
  final String selectedUrl;

  MenuWebViewPage({
    @required this.title,
    @required this.selectedUrl,
  });

  @override
  _MenuWebViewPageState createState() => _MenuWebViewPageState();
}

class _MenuWebViewPageState extends State<MenuWebViewPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  num _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    String packageName;
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      packageName = packageInfo.packageName;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => MyWebView('News',
                        'https://u4norproductsandservices.wordpress.com/')));
              }),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Share app         '),
              ),
              PopupMenuItem(
                value: 2,
                child: Text('Rate us'),
              ),
              PopupMenuItem(
                value: 3,
                child: Text('Contact us'),
              ),
              PopupMenuItem(
                value: 4,
                child: Text('About'),
              ),
              PopupMenuItem(
                value: 5,
                child: Text('FAQS'),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 1:
                  Share.share(
                      'Check out NSS GH (National Service Scheme) app. I use it to access all NSS services without stress.\n\nGet it for free at https://play.google.com/store/apps/details?id=$packageName');
                  break;
                case 2:
                  _launchUrl('market://details?id=$packageName');
                  break;
                case 3:
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ContactUs()));
                  break;
                case 4:
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => About()));
                  break;
                case 5:
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          MyWebView('FAQs', 'https://nss.gov.gh/faqs/')));
                  break;
              }
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: IndexedStack(
        //key: UniqueKey(),
        index: _stackToView,
        children: <Widget>[
          WebView(
            initialUrl: widget.selectedUrl,
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

void _launchUrl(final String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

final _fbUrl = 'https://www.facebook.com/nssghana';
final _igUrl = 'https://www.instagram.com/nssghana';
final _twitterUrl = 'https://twitter.com/nssghana';
final _ytUrl = 'https://www.youtube.com/channel/UCEVjADLxwA7i6hRnLIbZYUw';

String _version;

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      _version = packageInfo.version;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/adinkra_pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        'NSS GH',
                        style: TextStyle(
                          fontSize: 18,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Version $_version',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Color(0xffce1126)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage('assets/images/nss.png'),
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xff390158),
                      ),
                      child: Text(
                        'The Scheme as currently constituted provides newly qualified graduates the opportunity to have practical exposure on the job, both in the public and private sectors, as part of their civic responsibility to the State. It also provides user agencies the opportunity to satisfy their manpower needs and affords communities that would otherwise have difficulty in accessing mainstream development initiatives, access to improved social services through community service.',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(25.0),
                      width: double.infinity,
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10,
                                        right: 14,
                                        top: 10,
                                        bottom: 10),
                                    padding: EdgeInsets.all(4),
                                    decoration:
                                        BoxDecoration(color: Color(0xff333333)),
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                    )),
                                Text(
                                  '46 Patrice Lumumba Road, Airport \nResidential Area, Accra, Ghana.',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            onTap: () => _launchMapsUrl(),
                          ),
                          Container(
                            width: double.infinity,
                            color: Color(0xff666666),
                            height: 0.5,
                            margin: EdgeInsets.only(top: 5),
                          ),
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10,
                                        right: 14,
                                        top: 10,
                                        bottom: 10),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/ic_facebook.png'))),
                                Text(
                                  'Like us on Facebook',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            onTap: () => _launchUrl(_fbUrl),
                          ),
                          Container(
                            width: double.infinity,
                            color: Color(0xff666666),
                            height: 0.5,
                            margin: EdgeInsets.only(top: 5),
                          ),
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10,
                                        right: 14,
                                        top: 10,
                                        bottom: 10),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/ic_instagram.png'))),
                                Text(
                                  'Follow us on Instagram',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            onTap: () => _launchUrl(_igUrl),
                          ),
                          Container(
                            width: double.infinity,
                            color: Color(0xff666666),
                            height: 0.5,
                            margin: EdgeInsets.only(top: 5),
                          ),
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10,
                                        right: 14,
                                        top: 10,
                                        bottom: 10),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/ic_twitter.png'))),
                                Text(
                                  'Follow us on Twitter',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            onTap: () => _launchUrl(_twitterUrl),
                          ),
                          Container(
                            width: double.infinity,
                            color: Color(0xff666666),
                            height: 0.5,
                            margin: EdgeInsets.only(top: 5),
                          ),
                          GestureDetector(
                            child: Row(
                              children: <Widget>[
                                Container(
                                    width: 30,
                                    height: 30,
                                    margin: EdgeInsets.only(
                                        left: 10,
                                        right: 14,
                                        top: 10,
                                        bottom: 10),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/ic_youtube.png'))),
                                Text(
                                  'Subscribe to our YouTube Channel',
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            onTap: () => _launchUrl(_ytUrl),
                          ),
                          Container(
                            width: double.infinity,
                            color: Color(0xff666666),
                            height: 0.5,
                            margin: EdgeInsets.only(top: 5),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 14, 0),
                            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                            child: Text(
                              'DISCLAIMER: We (Deemiensa) hereby declare that we do not own the rights to the contents of this app. All rights belong to the owner (Ghana National Service Scheme). No copyright infringement intended.',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff231F20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage('assets/images/pattern_bar.png'),
            width: double.infinity,
            height: 25,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }

  /// function to launch the location of nss in google maps or apple maps if available
  /// on the phone. Otherwise open a browser
  void _launchMapsUrl() async {
    final url =
        'https://maps.google.com/maps?ll=5.609562,-0.183349&z=17&t=m&hl=en&gl=GH&mapclient=embed&cid=2094165318846128557';
    final appleUrl = 'https://maps.apple.com/?sll=${5.609562},${-0.183349}';
    if (await canLaunch(url)) {
      await launch(url);
    } else if (await canLaunch(appleUrl)) {
      await launch(appleUrl);
    } else {
      throw 'Could not launch $url';
    }
  }

  // function to open any url
  void _launchUrl(final String url) async {
    // final url = 'https://www.facebook.com/nssghana';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

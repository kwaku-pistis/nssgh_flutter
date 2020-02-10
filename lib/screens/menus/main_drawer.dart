import 'package:flutter/material.dart';
import 'package:nssgh/main.dart';
import 'package:nssgh/screens/widgets/menu_webview_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          // Container(
          //   width: double.infinity,
          //   padding: EdgeInsets.all(20.0),
          //   color: Theme.of(context).primaryColor,
          //   child: Center(
          //     child: Column(
          //       children: [
          //         Container(
          //           width: 100,
          //           height: 100,
          //           margin: EdgeInsets.only(
          //             top: 60.0,
          //             bottom: 10,
          //           ),
          //           decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             image: DecorationImage(
          //               image: NetworkImage(
          //                   'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),
          //         Text(
          //           'pistis@gmail.com',
          //           style: TextStyle(
          //             fontSize: 18.0,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text(
          //     'Profile',
          //     style: TextStyle(fontSize: 18),
          //   ),
          //   onTap: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Profile'),
          //   onTap: null,
          // ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Profile'),
          //   onTap: null,
          // ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('Profile'),
          //   onTap: null,
          // ),

          /// this is the main one I will be using
          /// starting with the header
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/adinkra_pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 25.0, bottom: 5.0),
                  child: Image.asset(
                    'assets/images/nss.png',
                  ),
                ),
                Text(
                  'Our mission is to mobilize and deploy Ghanaian citizens 18 years and above for national development',
                  style: TextStyle(),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 20.0,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('assets/images/pattern_bar.png'),
                //       fit: BoxFit.fill
                //     )
                //   ),
                // )
              ],
            ),
          ),
          Container(
            height: 25.0,
            child: Image.asset(
              'assets/images/pattern_bar.png',
              fit: BoxFit.cover,
            ),
          ),

          // Main menu drawers
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushReplacementNamed(context, InitialRoute);
            },
          ),
          ListTile(
              leading: Icon(Icons.language),
              title: Text('NSS Portal'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => MenuWebViewPage(
                              title: 'NSS Portal',
                              selectedUrl: 'https://portal.nss.gov.gh/',
                            )),
                    ModalRoute.withName('/'));
                //pr.show();
              }),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text('Request Certificate'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Request Certificate',
                            selectedUrl: 'https://www.nsscertificate.com/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          Container(
            width: double.infinity,
            child: Image.asset('assets/images/line.png'),
          ),

          // deployment menus
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(16.0),
            child: Text('Deployment'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Check Posting'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Check Posting',
                            selectedUrl: 'https://portal.nss.gov.gh/sign-in',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          ListTile(
            leading: Icon(Icons.block),
            title: Text('Exemptions'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Exemptions',
                            selectedUrl: 'https://nss.gov.gh/exemption/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          Container(
            width: double.infinity,
            child: Image.asset('assets/images/line.png'),
          ),

          // Projects menu
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(16.0),
            child: Text('Projects'),
          ),
          ListTile(
            leading: Icon(Icons.spa),
            title: Text('Farms'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Farms',
                            selectedUrl: 'https://nss.gov.gh/farms/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          ListTile(
            leading: Icon(Icons.play_for_work),
            title: Text('Borehole'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Borehole',
                            selectedUrl: 'https://nss.gov.gh/boreholes/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          Container(
            width: double.infinity,
            child: Image.asset('assets/images/line.png'),
          ),

          // Media menus
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(16.0),
            child: Text('Media'),
          ),
          ListTile(
            leading: Icon(Icons.import_contacts),
            title: Text('Blog'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Blog',
                            selectedUrl: 'https://nss.gov.gh/blog/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          ListTile(
            leading: Icon(Icons.video_library),
            title: Text('Videos'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Videos',
                            selectedUrl: 'https://nss.gov.gh/videos/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Press Releases'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MenuWebViewPage(
                            title: 'Press Release',
                            selectedUrl: 'https://nss.gov.gh/press/',
                          )),
                  ModalRoute.withName('/'));
            },
          ),
        ],
      ),
    ));
  }
}

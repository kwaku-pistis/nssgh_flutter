import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  style: TextStyle(
                  ),
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
            height: 30.0,
            child: Image.asset(
              'assets/images/pattern_bar.png',
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

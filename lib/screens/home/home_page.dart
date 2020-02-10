import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nssgh/screens/home/webview.dart';
import 'package:nssgh/screens/menus/about.dart';
import 'package:nssgh/screens/menus/main_drawer.dart';

class HomePage extends StatelessWidget {
  static const _GETFUND = 'http://www.getfund.gov.gh/';
  static const _GHIPSS = 'https://ghipss.net/';
  static const _MOE = 'http://moe.gov.gh/';
  static const _RAR = 'https://nss.gov.gh/rules-and-regulations/';
  static const _DWNLDS = 'https://nss.gov.gh/downloads/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MyWebView(
                          title: 'News', 
                          selectedUrl: 'https://u4norproductsandservices.wordpress.com/')));
              }),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text('Share app'),
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
                case 4:
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          About()));
                  break;
              }
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/adinkra_pattern.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 15.0),
              child: CarouselSlider(
                height: 200.0,
                items: <Widget>[
                  Image(
                    image: AssetImage('assets/images/slider_one.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Image(
                    image: AssetImage('assets/images/slider_two.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Image(
                    image: AssetImage('assets/images/slider_three.png'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
                aspectRatio: 16 / 9,
                viewportFraction: 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 10),
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: Duration(seconds: 10),
                enlargeCenterPage: true,
                onPageChanged: null,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      GridView.count(
                        padding: const EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              color: Color(0xff4340ce),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/ic_online_registration.png'),
                                width: 150.0,
                                height: 150.0,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => MyWebView(
                                      title: 'Online Registration',
                                      selectedUrl:
                                          'https://portal.nss.gov.gh/registration-signin')));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              color: Color(0xff390158),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/ic_find_posting.png'),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => MyWebView(
                                      title: 'Find Posting',
                                      selectedUrl:
                                          'https://portal.nss.gov.gh/sign-in')));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              color: Color(0xffff7400),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/ic_check_allowance.png'),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => MyWebView(
                                      title: 'Check Allowance',
                                      selectedUrl:
                                          'https://nss.gov.gh/ghipss/student_detailslist.php')));
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              color: Color(0xfffb2700),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/ic_check_pin.png'),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) => MyWebView(
                                      title: 'Check Allowance',
                                      selectedUrl:
                                          'https://portal.nss.gov.gh/check-pin')));
                            },
                          ),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 25, 25, 15),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 0.5,
                          )),
                      Text(
                        'NSS DOCUMENTS',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                      GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 60, right: 10),
                                child: Icon(
                                  Icons.file_download,
                                  color: Color(0xffCE1126),
                                  size: 30,
                                )),
                            Text(
                              'A list of downloadable NSS documents',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyWebView(
                                    title:
                                        'Downloads | National Service Scheme',
                                    selectedUrl: _DWNLDS,
                                  )));
                        },
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                      Text(
                        'USEFUL LINKS',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                      GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 60, right: 10),
                                child: Icon(
                                  Icons.language,
                                  color: Color(0xffCE1126),
                                  size: 30,
                                )),
                            Text(
                              'Ministry of Education',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyWebView(
                                    title: 'Ministry of Education',
                                    selectedUrl: _MOE,
                                  )));
                        },
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                      GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 60, right: 10),
                                child: Icon(
                                  Icons.language,
                                  color: Color(0xffCE1126),
                                  size: 30,
                                )),
                            Text(
                              'GetFund Ghana',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyWebView(
                                    title: 'Get Fund',
                                    selectedUrl: _GETFUND,
                                  )));
                        },
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                      GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 60, right: 10),
                                child: Icon(
                                  Icons.language,
                                  color: Color(0xffCE1126),
                                  size: 30,
                                )),
                            Text(
                              'GHIPSS',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyWebView(
                                    title: 'GHIPSS',
                                    selectedUrl: _GHIPSS,
                                  )));
                        },
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                      GestureDetector(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(left: 60, right: 10),
                                child: Icon(
                                  Icons.language,
                                  color: Color(0xffCE1126),
                                  size: 30,
                                )),
                            Text(
                              'Rules and Regulations',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyWebView(
                                    title: 'Rules and Regulations',
                                    selectedUrl: _RAR,
                                  )));
                        },
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                          child: Image(
                            image: AssetImage('assets/images/line.png'),
                            height: 1,
                          )),
                    ],
                  )),
            ),
            Container(
              height: 25.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/pattern_bar.png'),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  // void _selected(){

  //   }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nssgh/screens/main_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NSS GH',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
          primaryColor: Color(0xff006b3f),
          accentColor: Color(0xffce1126),
          primaryColorDark: Color(0xff004629)),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
                          Container(
                            color: Color(0xff4340ce),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ic_online_registration.png'),
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                          Container(
                            width: 150.0,
                            height: 150.0,
                            color: Color(0xff390158),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ic_find_posting.png'),
                            ),
                          ),
                          Container(
                            width: 150.0,
                            height: 150.0,
                            color: Color(0xffff7400),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ic_check_allowance.png'),
                            ),
                          ),
                          Container(
                            width: 150.0,
                            height: 150.0,
                            color: Color(0xfffb2700),
                            child: Image(
                              image:
                                  AssetImage('assets/images/ic_check_pin.png'),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 25, 25, 15),
                        child: Image(
                          image: AssetImage('assets/images/line.png'),
                          height: 0.5,
                        )
                      ),
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
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 10),
                            child: Icon(Icons.file_download, color: Color(0xffCE1126), size: 30,)
                          ),
                          Text(
                              'A list of downloadable NSS documents',
                              style: TextStyle(fontSize: 16),
                            )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image(
                          image: AssetImage('assets/images/line.png'),
                          height: 1,
                        )
                      ),
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
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 10),
                            child: Icon(Icons.language, color: Color(0xffCE1126), size: 30,)
                          ),
                          Text(
                              'Ministry of Education',
                              style: TextStyle(fontSize: 16),
                            )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image(
                          image: AssetImage('assets/images/line.png'),
                          height: 1,
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 10),
                            child: Icon(Icons.language, color: Color(0xffCE1126), size: 30,)
                          ),
                          Text(
                              'GetFund Ghana',
                              style: TextStyle(fontSize: 16),
                            )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image(
                          image: AssetImage('assets/images/line.png'),
                          height: 1,
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 10),
                            child: Icon(Icons.language, color: Color(0xffCE1126), size: 30,)
                          ),
                          Text(
                              'GHIPSS',
                              style: TextStyle(fontSize: 16),
                            )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image(
                          image: AssetImage('assets/images/line.png'),
                          height: 1,
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 60, right: 10),
                            child: Icon(Icons.language, color: Color(0xffCE1126), size: 30,)
                          ),
                          Text(
                              'Rules and Regulations',
                              style: TextStyle(fontSize: 16),
                            )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Image(
                          image: AssetImage('assets/images/line.png'),
                          height: 1,
                        )
                      ),
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

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

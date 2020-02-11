import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController textController = new TextEditingController();
  TextEditingController devTextController = new TextEditingController();

  bool _validate = false;
  bool _nssValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 5),
                    child: Text(
                      'Get in touch with NSS. We are at the other end waiting on you.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffce1126),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/line.png'),
                      width: 1,
                    ),
                    color: Color(0xffe8e8e8),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        hintText: 'Type message here',
                        errorText:
                            _nssValidate ? 'Please enter a message' : null,
                        contentPadding: EdgeInsets.only(top: 10, bottom: 50),
                      ),
                      expands: false,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  GestureDetector(
                      child: Card(
                        margin: EdgeInsets.fromLTRB(15, 20, 15, 5),
                        color: Color(0xff006b3f),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 0),
                              child: Icon(
                                Icons.mail,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                'SEND TO NSS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          textController.text.isEmpty
                              ? _nssValidate = true
                              : _nssValidate = false;

                          if (textController.text.isNotEmpty) {
                            _sendEmail(textController.text, 'info@nss.gov.gh',
                                'National Service Scheme');
                          }
                        });
                      }),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 5, top: 40),
                    child: Text(
                      'Contact Deemiensa, the developers of NSS GH app.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffce1126),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/line.png'),
                      width: 1,
                    ),
                    color: Color(0xffe8e8e8),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: TextField(
                      controller: devTextController,
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        hintText: 'Type message here',
                        errorText: _validate ? 'Please enter a message' : null,
                        contentPadding: EdgeInsets.only(top: 10, bottom: 50),
                      ),
                      expands: false,
                      keyboardType: TextInputType.multiline,
                    ),
                  ),
                  GestureDetector(
                      child: Card(
                        margin: EdgeInsets.fromLTRB(15, 20, 15, 5),
                        color: Color(0xff006b3f),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.only(right: 0),
                              child: Icon(
                                Icons.mail,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                'SEND TO DEVELOPERS',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onTap: () {
                        // validate the text to know if is not empty
                        setState(() {
                          devTextController.text.isEmpty
                              ? _validate = true
                              : _validate = false;

                          if (devTextController.text.isNotEmpty) {
                            _sendEmail(
                                devTextController.text,
                                'deemiensainc@gmail.com',
                                'Contact Developers: NSS GH app');
                          }
                        });
                      }),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 5, top: 40),
                    child: Text(
                      'Kindly reach out to us through any of the below listed means. You are not going to hit a ridiculously long menu when you call us',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffce1126),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  GestureDetector(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(15, 20, 15, 5),
                      color: Color(0xffd4311a),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(right: 0),
                            child: Image(
                              image: AssetImage('assets/images/ic_phone.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              '+233-302-772714',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onTap: () => launch('tel://+233-302-772714'),
                  ),
                  GestureDetector(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      color: Color(0xffd4311a),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(right: 0),
                            child: Image(
                              image: AssetImage('assets/images/ic_phone.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              '+233-302-769194',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onTap: () => launch('tel://+233-302-769194'),
                  ),
                  GestureDetector(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      color: Color(0xffd4311a),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(right: 0),
                            child: Image(
                              image: AssetImage('assets/images/ic_phone.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              '+233-507-193125',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onTap: () => launch('tel://+233-507-193125'),
                  ),
                  GestureDetector(
                    child: Card(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 5),
                      color: Color(0xffd4311a),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(right: 0),
                            child: Image(
                              image: AssetImage('assets/images/ic_phone.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              '+233-507-193128',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onTap: () => launch('tel://+233-507-193128'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

_sendEmail(String text, String emailTo, String subject) async {
  final Email mail = Email(
    body: text,
    subject: subject,
    recipients: [emailTo],
  );

  await FlutterEmailSender.send(mail);
}

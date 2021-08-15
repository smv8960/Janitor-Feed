import 'package:flutter/material.dart';
import 'package:janitor_feed/admin/page1/login_page.dart';
import 'package:janitor_feed/admin/page_2/admin_homepage.dart';
import 'package:janitor_feed/student/page_1/idbutton_block.dart';
import 'package:janitor_feed/student/page_1/qr_block.dart';
import 'package:janitor_feed/student/page_2/feedback_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Janitor-Feed',
      home: admin_homepage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 128, 185),
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image(
            image: AssetImage("vitlogo.png"),
            width: 200,
            height: 50,
            alignment: Alignment.bottomLeft,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Janitor-Feed",
              style: TextStyle(
                  fontFamily: 'Times',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(children: [
             Container(width: 300, height: 20),
              qr_block(),
              Container(width: 300, height: 20),
              idbutton_block(),
              Container(width: 300, height: 20),
            ]),
          ),
        ),
      ),
    );
  }
  }


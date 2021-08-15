import 'package:flutter/material.dart';
import 'package:janitor_feed/admin/page_2/remove_emp.dart';

import 'add_emp.dart';
import 'create_QR.dart';
class admin_homepage extends StatefulWidget {
  @override
  _admin_homepageState createState() => _admin_homepageState();
}

class _admin_homepageState extends State<admin_homepage> {
  @override
  Widget _buildAddEmp() {
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Container(
              height: 5,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 60, 141, 188),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)))),
          Container(
              height: 150,
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Add an Employee",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 25),
                        child: RaisedButton(
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context)=> add_emp(),));},
                          child: Text("Add",
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center),
                          color: Color.fromARGB(255, 51, 122, 183),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 40, 96, 144))),
                        )),
                  ),
                ],
              ))
        ]));
  }
  Widget _buildRemoveEmp(){
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Container(
              height: 5,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 92, 184, 92),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)))),
          Container(
              height: 150,
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Remove an Employee",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 25),
                        child: RaisedButton(
                          onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context)=> remove_emp()));},
                          child: Text("Remove",
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center),
                          color: Color.fromARGB(255, 92, 184, 92),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 76, 174, 76))),
                        )),
                  ),
                ],
              ))
        ]));
  }
  Widget _buildModifyEmp(){
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Container(
              height: 5,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255 ,91 ,192 ,222),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)))),
          Container(
              height: 150,
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Modify Employee Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 25),
                        child: RaisedButton(
                          onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context)=> remove_emp()));},
                          child: Text("Modify",
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center),
                          color: Color.fromARGB(255 ,91 ,192 ,222),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 70, 184, 218))),
                        )),
                  ),
                ],
              ))
        ]));
  }
  Widget _buildCreateQR(){
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(children: [
          Container(
              height: 5,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255 ,243 ,156 ,18),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70)))),
          Container(
              height: 150,
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Create QR-Code",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 300,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 25),
                        child: RaisedButton(
                          onPressed:(){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context)=> create_QR()));},
                          child: Text("Create",
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center),
                          color: Color.fromARGB(255 ,243 ,156 ,18),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255 ,191 ,120 ,6))),
                        )),
                  ),
                ],
              ))
        ]));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
                children: [
                  _buildAddEmp(),
                  SizedBox(height: 25,),
                  _buildRemoveEmp(),
                  SizedBox(height: 25,),
                  _buildModifyEmp(),
                  SizedBox(height: 25,),
                  _buildCreateQR()
            ]),
          ),
        ),
      ),
    );
  }
}

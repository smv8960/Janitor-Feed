import 'package:flutter/material.dart';
import 'package:janitor_feed/admin/page_2/admin_homepage.dart';

class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String _email;
  String _password;
  final GlobalKey<FormState> _loginformKey = GlobalKey<FormState>();
  Widget _buildEmail() {
    return Container(
      height: 60,
      width: 300,
      child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(labelText: 'Email',
            border: OutlineInputBorder()),
          validator: (value) {
            final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
            final regExp = RegExp(pattern);
            if (value.isEmpty || !value.endsWith("vitbhopal.ac.in")) {
              return 'Enter an email';
            } else if (!regExp.hasMatch(value)) {
              return 'Enter a valid email';
            } else {
              return null;
            }
          },
        onSaved: (String value) {
          _email = value;
        },
      ),
    );
  }
  Widget _buildPassword() {
    return Container(
      height: 60,
      width: 300,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction, obscureText: true,
        decoration: InputDecoration(labelText: 'Password',border: OutlineInputBorder()),
        keyboardType: TextInputType.visiblePassword,
        validator: (value) {
          if (value.length < 7) {
            return 'Password must be at least 7 characters long';
          } else {
            return null;
          }
        },
        onSaved: (String value) {
          _password = value;
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 41, 128, 185),
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.all(3.0),
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Form(
              key: _loginformKey,
              child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(children: [
                  Container(
                   height: 350,
                   width: 350,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10), topRight: Radius.circular(10))),
                   child: Column(children: [
                     Container(
                      height: 5,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 60, 141, 188),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),),),),
                     Align(
                       alignment: Alignment.topLeft,
                       child: Padding(
                         padding: const EdgeInsets.all(23.0),
                         child: Text("Admin Login",
                             style: TextStyle(color:Colors.black ,fontFamily: 'OpenSans',
                                 fontWeight: FontWeight.bold, fontSize: 25)),
                       ),
                     ),
                    SizedBox(height: 15,),
                     _buildEmail(),
                     SizedBox(height: 20,),
                     _buildPassword(),
                     SizedBox(height: 25,),
                     Padding(
                       padding: const EdgeInsets.only(right:30.0,top: 13.0),
                       child: Align(
                         alignment: Alignment.bottomRight,
                         child: Container(
                           height:37,
                           width: 100,
                           child: RaisedButton(
                             onPressed: () {
                               if (!_loginformKey.currentState.validate()) {
                                 return;
                               }
                               _loginformKey.currentState.save();
                               Navigator.of(context).push(MaterialPageRoute(
                                 builder: (BuildContext context)=> admin_homepage(),));
                               //Send to API
                             },
                             child: Text("Sign in",
                                 style:
                                 TextStyle(color: Colors.white, fontSize: 15),
                                 textAlign: TextAlign.center),
                             color: Color.fromARGB(255, 51, 122, 183),
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(5),
                                 side: BorderSide(
                                     color: Color.fromARGB(255, 40, 96, 144))),
                           ),
                         ),
                       ),
                     )
                   ]),
                  ),
                ],),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

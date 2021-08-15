import 'package:flutter/material.dart';
import 'package:janitor_feed/student/page_2/feedback_form.dart';
class idbutton_block extends StatefulWidget {
  @override
  _idbutton_blockState createState() => _idbutton_blockState();
}

class _idbutton_blockState extends State<idbutton_block> {
  final myController = TextEditingController();
  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }
  String emp_id="";
  Widget _buildId() {
    return Container(
      height: 42,
      width: 200,
      child: TextFormField(
        controller: myController,
        decoration: InputDecoration(
            hintText: "Employee-ID",
            border: OutlineInputBorder()),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 157,
        width: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
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
              height: 152,
              width: 30,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Enter the Employee-ID",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 3,
                  ),
                  _buildId(),

                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed:() {
                            emp_id = myController.text;
                                  // add function to check employee in database
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context)=> feedback_form(emp_id : emp_id),));
                          },
                          child: Text("Give-Feed",
                              style:
                              TextStyle(color: Colors.white, fontSize: 12),
                              textAlign: TextAlign.center),
                          color: Color.fromARGB(255, 92, 184, 92),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 76, 174, 76))),
                        ),
                      )),
                ],
              ))
        ]));
  }
}

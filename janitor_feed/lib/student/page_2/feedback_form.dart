import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class feedback_form extends StatefulWidget {
 String emp_id;
 feedback_form({this.emp_id});
  @override
  _feedback_formState createState() => _feedback_formState(emp_id);
}

class _feedback_formState extends State<feedback_form> {
  _feedback_formState(this.emp_id);
  String emp_id;
  String _reg_no="";
  String _room_no="";
  String _suggestion="";
  String _rating="0.0";
  bool _brooming= false;
  bool _dusting= false;
  bool _mopping= false;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _buildReg_no() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Registration no.'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Registration  no. Required';
        }
        return null;
      },
      onSaved: (String value) {
        _reg_no = value;
      },
    );
  }
  Widget _buildRoom_no() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Room no.'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Room no. Required';
        }
        return null;
      },
      onSaved: (String value) {
        _reg_no = value;
      },
    );
  }
  Widget _buildBrooming(){
    return Row(
      children: [
        Checkbox(
          value: _brooming,
          onChanged: (bool value){
            setState(() {
              _brooming= value;
            });
          },
        ),
        Text("Brooming",
            style: TextStyle(color: Colors.grey,
                fontSize: 18))
      ],
    );
  }
  Widget _buildMopping(){
    return Row(
      children: [
        Checkbox(
          value: _mopping,
          onChanged: (bool value){
            setState(() {
              _mopping= value;
            });
          },
        ),
        Text("Mopping",
            style: TextStyle(color: Colors.grey,
                fontSize: 18))
      ],
    );
  }
  Widget _buildDusting(){
    return Row(
      children: [
        Checkbox(
          value: _dusting,
          onChanged: (bool value){
            setState(() {
              _dusting= value;
            });
          },
        ),
        Text("Dusting",
            style: TextStyle(color: Colors.grey,
                fontSize: 18))
      ],
    );
  }
  Widget _buildRating(){
    return Padding(
          padding: const EdgeInsets.all(5.0),
          child: RatingBar.builder(
            initialRating: 0,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return Icon(
                    Icons.sentiment_very_dissatisfied,
                    color: Colors.red,
                  );
                case 1:
                  return Icon(
                    Icons.sentiment_dissatisfied,
                    color: Colors.redAccent,
                  );
                case 2:
                  return Icon(
                    Icons.sentiment_neutral,
                    color: Colors.amber,
                  );
                case 3:
                  return Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.lightGreen,
                  );
                case 4:
                  return Icon(
                    Icons.sentiment_very_satisfied,
                    color: Colors.green,
                  );
                default:
                  return Container();
              }
            },
            onRatingUpdate: (rating) {
              setState(() {
                _rating = rating.toString();
              });
            },
            updateOnDrag: true,
          ),
    );
  }
  Widget _buildSuggestion() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Any Suggestions'),
      onSaved: (String value) {
        _suggestion= value;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,appBar: AppBar(
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
      body:SingleChildScrollView(
        child: Container(
         alignment: Alignment.center,
         child: Padding(
           padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            Container(
            height: 137,
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
               SizedBox(height: 15,width: 350,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Emp-ID :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                                ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(emp_id,
                            style: TextStyle(fontSize: 18)),
            ),
          ],),
        ),
                Padding(
                  padding:   const EdgeInsets.symmetric(vertical: 8.0,horizontal: 3.0),
                  child: Row(mainAxisAlignment:MainAxisAlignment.start,children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Emp-Name :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
              ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Salman MAhboob",
                          style: TextStyle(
                              fontSize: 18)),
              ),
            ],),
          )
        ]),
          ),
            SizedBox(height: 15,),
            Container(
              height: 620,
              width: 350,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), topRight: Radius.circular(10))),
              child: Column(
                children: [
                  Container(
                      height: 5,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 92, 184, 92),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70)))),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(children: [
                      Padding(
                     padding: const EdgeInsets.all(8.0),
                        child: Text("Feedback-form",
                         style: TextStyle(
                             fontWeight: FontWeight.bold, fontSize: 23)),
                   ),
                      _buildReg_no(),
                      SizedBox(height: 15),
                      _buildRoom_no(),
                      SizedBox(height: 15),
                      _buildBrooming(),
                      _buildMopping(),
                      _buildDusting(),
                      SizedBox(height: 15,),
                      Container( alignment: Alignment.topLeft,padding: const EdgeInsets.all(4.0),
                        child: Text("Please rate-us:",
                         style: TextStyle(color: Colors.grey,
                              fontSize: 16)),
                       ),
                      _buildRating(),
                      _buildSuggestion(),
                      SizedBox(height:10),
                      RaisedButton(
                        child: Text("Submit",
                         style:
                         TextStyle(color: Colors.white, fontSize: 12),
                         textAlign: TextAlign.center),
                        color: Color.fromARGB(255, 92, 184, 92),
                        shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                         side: BorderSide(
                             color: Color.fromARGB(255, 76, 174, 76))),
                        onPressed: () {
                       //add code here
                       showDialog(
                         context: context,
                         builder: (context) {
                           return AlertDialog(
                             // Retrieve the text the user has entered by using the
                             // TextEditingController.
                             content: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text("Submitted",style: TextStyle(
                                   fontSize: 25
                                 ),),
                                 Icon(Icons.done,color: Colors.blue,size:50),
                               ],
                             ),
                           );
                         },
                       );
                       print(_reg_no);
                       print(_room_no);
                       print(_rating);
                       print(_suggestion);
                       setState(() {
                          _reg_no="";
                         _room_no="";
                         _suggestion="";
                         _rating="0.0";
                         _brooming= false;
                         _dusting= false;
                         _mopping= false;
                         _feedback_formState(emp_id);
                       });
                       //Send to API
                     },
                   )
                 ],
               ),
             ),
           ],
         ),
      )
           ]),
        ),
        ),
      ),
    );
  }
}

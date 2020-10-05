import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_checkin/Screens/Survey_page.dart';
import 'Logo.dart';
import 'Resources.dart';
import '../main.dart';
import 'package:smart_checkin/Models/healthDetails.dart';

class Visitors extends StatefulWidget {

  @override
  _VisitorsState createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {

  //form key for validating form
  final _formKey = GlobalKey<FormState>();

  //User input variables
  String _surname;
  String _name;
  String _id;
  String _email;
  String _contact;
  String _residence;

  Widget nameInput()
  {
    return Expanded(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Full name required";
          }
          return null;
        },
        onChanged: (String input) {
          input = _name;
        },


        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  Widget surnameInput()
  {
    return Expanded(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Surname required";
          }
          return null;
        },
        onChanged: (String input) {
          input = _surname;
        },

        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  Widget studentInput()
  {
    return Expanded(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Student/ID/Emplyee no. required";
          }
          return null;
        },
        onChanged: (String input) {
          input = _id;
        },

        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  Widget emailInput()
  {
    return Expanded(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Email address is required";
          }
          return null;
        },
        onChanged: (String input) {
          input = _email;
        },

        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  Widget contactInput()
  {
    return Expanded(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Contact number is required";
          }
          return null;
        },
        onChanged: (String input) {
          input = _contact;
        },

        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  Widget residentInput()
  {
    return Expanded(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return "Building name is required";
          }
          return null;
        },
        onChanged: (String input) {
          input = _residence;
        },


        showCursor: true,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide:  BorderSide(color: Colors.blue)
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visitor CheckIn"),
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            Container(
              height: Resources().scaleH(context, 0.05),
              child: Center(
                child: Text('Smart Menu',
                  style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 16
                  ),),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => StudentHome())
                  );  //Navigator
                }),

            ListTile(
              leading: Icon(Icons.transit_enterexit),
              title: Text("Student CheckOut"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => SurveyPage()
                    ));
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {SystemNavigator.pop();},
            )

          ],
        ),
      ),

      body: ListView(
        children: [
          SizedBox(height: Resources().scaleH(context, 0.03),),

          Center(child: Logo(context: context,)),

          SizedBox(height: Resources().scaleH(context, 0.03),),

          Container(
            color: Colors.blue,
            width: Resources().scaleW(context, 1,),
            height: Resources().scaleH(context, 0.08),
            child: Center(
              child: Text("VISITORS INFORMATION",
                style:  TextStyle(
                  letterSpacing: 1,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Container(
              width: Resources().scaleW(context, 1),
              height: Resources().scaleH(context, 0.4),
              child: Form(
                child: Form(
                  key: _formKey,
                  child: ListView(

                    children: [
                      Row(
                        children: [
                          Resources().formLabel(label: "Name"),
                          SizedBox(width: Resources().scaleH(context, 0.05),),
                          nameInput()
                        ]),

                      Row(
                        children: [
                          Resources().formLabel(label: "Surname"),
                          SizedBox(width: Resources().scaleH(context, 0.05),),

                          surnameInput()
                        ],),

                      Row(
                        children: [
                          Resources().formLabel(label: "Student ID/ID\nEmployee Number"),
                          SizedBox(width: Resources().scaleH(context, 0.05),),

                          studentInput()
                        ],),

                      Row(
                        children: [
                          Resources().formLabel(label: "Email Address"),
                          SizedBox(width: Resources().scaleH(context, 0.05),),

                          emailInput()
                        ],),

                      Row(
                        children: [
                          Resources().formLabel(label: "Contact Number"),
                          SizedBox(width: Resources().scaleH(context, 0.05),),

                          contactInput()
                        ],),

                      Row(
                        children: [
                        Resources().formLabel(label: "Place of Residence"),
                          SizedBox(width: Resources().scaleH(context, 0.05),),

                          residentInput()
                        ],),

                      SizedBox(height: 20,)
                    ],),
                ),
              ),
            ),
          ),

          SizedBox(height: Resources().scaleH(context, 0.05),),
          FlatButton(
            onPressed: (){
              if (_formKey.currentState.validate()) {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HealthDetails()
                ));
              }
            },

            child: Container(
              height: Resources().scaleH(context, 0.09),
              width: Resources().scaleW(context, 0.7),
              decoration: BoxDecoration(
                  color: Colors.blue[500],
                  borderRadius:  BorderRadius.circular(10),
                  boxShadow: [BoxShadow(spreadRadius: 2,
                      blurRadius: 10,
                      color: Colors.blue[200])]),
              child: Center(
                child: Text("ADD HEALTH INFORMATION",
                  style: TextStyle(
                    fontSize: 16,
                      color: Colors.white
                  ),),
              ),
            ),
          ),
        ],),
    );
  }
}

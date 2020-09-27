import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_checkin/Models/healthDetails.dart';
import 'package:smart_checkin/Screens/Resources.dart';
import '../main.dart';
import 'Visitors_Screen.dart';

class StudentCheckOut extends StatefulWidget {
  @override
  _StudentCheckOutState createState() => _StudentCheckOutState();
}

class _StudentCheckOutState extends State<StudentCheckOut> {

  //Method to get screen width
  double ScaleW(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.width * num;

  }

  //Method to get screen height
  double ScaleH(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.height * num;

  }

  //personal details form variables
  String fullName, studentNo, address, contactNo;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map student = {};

  //creating the fields for the personal details form
  Widget _buildFullName() {
    return TextFormField(
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelText: "Full Name",
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "Name and Surname is required";
        }
        return null;
      },
      onSaved: (String value) {
        fullName = value;
      },
    );
  }

  Widget _buildStudentNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Student No",
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty) {
          return "Student number is required";
        }
        return null;
      },
      onSaved: (String value) {
        studentNo = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.horizontal(
                right: Radius.circular(10), left: Radius.circular(10)),
          )),
      validator: (String value) {
        if (value.isEmpty) {
          return "Address is required";
        }
        return null;
      },
      onSaved: (String value) {
        address = value;
      },
    );
  }

  Widget _buildContactNo() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Contact No",
      ),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return "Contact number is required";
        }
        return null;
      },
      onSaved: (String value) {
        contactNo = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Student checkout"),

            Tools().Logo(context: context),

          ],
        ),
      ),

      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            Container(
              height: ScaleH(context, 0.05),
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
              title: Text("Visitor Check In"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => Visitors()
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

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    _buildFullName(),

                    _buildStudentNo(),

                    SizedBox(height: 16.0,),

                    _buildAddress(),

                    _buildContactNo()
                  ],
                ),
              ),

              SizedBox(height: 16.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Add health details",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      student["fullname"]=fullName;
                      student["studentno"]=studentNo;
                      student["address"]=address;
                      student["contactno"]=contactNo;

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => HealthDetails()),
                      );
                      //Navigator.pushNamed(context, "/healthdetails");
                      //here we can now use the declared variables later
                    },
                  ),
                  RaisedButton(
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Check out",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }
                      _formKey.currentState.save();
                      student["fullname"]=fullName;
                      student["studentno"]=studentNo;
                      student["address"]=address;
                      student["contactno"]=contactNo;

                      Tools().Confirmation(context, "Student", "Out");

                      //Navigator.pushNamed(context, "/visitorcheckin");
                      //here we can now use the declared variables later
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_checkin/Screens/Health_Survey.dart';
import 'Logo.dart';
import 'Resources.dart';
import '../main.dart';
import 'package:smart_checkin/Models/healthDetails.dart';

class Visitors extends StatefulWidget {

  @override
  _VisitorsState createState() => _VisitorsState();
}

class _VisitorsState extends State<Visitors> {

  //User input variables
  String _surname;
  String _name;
  String _ID;
  String _email;
  String _contact;
  String _residence;
  var _selection;

  //Get Screen width for compatability with different devices
  double ScaleW(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.width * num;

  }

  //Get Screen height for compatability with different devices
  double ScaleH(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.height * num;

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
              title: Text("Student CheckOut"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => Survey_page()
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
          SizedBox(height: ScaleH(context, 0.03),),

          Center(child: Logo(context: context,)),

          SizedBox(height: ScaleH(context, 0.03),),

          Container(
            color: Colors.blue,
            width: ScaleW(context, 1,),
            height: ScaleH(context, 0.08),
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
              width: ScaleW(context, 1),
              height: ScaleH(context, 0.4),
              child: Form(
                child: ListView(

                  children: [
                    Row(
                      children: [
                        Tools().Dtext(label: "Name"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _name)
                      ]),

                    Row(
                      children: [
                        Tools().Dtext(label: "Surname"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _surname)
                      ],),

                    Row(
                      children: [
                        Tools().Dtext(label: "Student ID/ID\nEmployee Number"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _ID)
                      ],),

                    Row(
                      children: [
                        Tools().Dtext(label: "Email Address"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _email)
                      ],),

                    Row(
                      children: [
                        Tools().Dtext(label: "Contact Number"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _contact)
                      ],),

                    Row(
                      children: [
                      Tools().Dtext(label: "Place of Residence"),
                        SizedBox(width: ScaleH(context, 0.05),),

                        Tools().userInput(
                            variable: _contact)
                      ],),

                    SizedBox(height: 20,)
                  ],),
              ),
            ),
          ),

          SizedBox(height: ScaleH(context, 0.05),),
          FlatButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HealthDetails()
              ));
            },

            child: Container(
              height: ScaleH(context, 0.09),
              width: ScaleW(context, 0.7),
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

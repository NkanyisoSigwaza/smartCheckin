import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_checkin/main.dart';
import 'package:smart_checkin/Screens/Visitors_Screen.dart';
import 'package:smart_checkin/Screens/Resources.dart';

class HealthDetails extends StatefulWidget {
  final student;
  //Status parameter used to customize this page for students and visitors
  HealthDetails({this.student});

  @override
  _HealthDetailsState createState() => _HealthDetailsState();
}

class _HealthDetailsState extends State<HealthDetails> {

  //health details form variables
  double temperature = 0; //keep the entered temperature here
  final GlobalKey<FormState> _tempKey = GlobalKey<FormState>();
  Map<String, bool> symptoms = {
    "Lung infection?": false,
    "Contacted infected person?": false,
    "cough/Flu?": false,
    "Sore throat?": false,
    "Shortness of breath?": false,
    "Loss of smell/taste?": false,
    "Muscle pain?": false,
    "Diarrhoea": false,
    "Weakness": false,
  }; //the symptoms
  List<String> selected = []; //selected symptoms

  //building/displaying the health details form
  Widget healthForm() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Symptoms",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          color: Colors.blue,
          thickness: 2.0,
        ),
        SizedBox(
          child: ListView(
            shrinkWrap: true,
            children: symptoms.keys.map((option) {
              return CheckboxListTile(
                activeColor: Colors.red,
                //dense: true,
                title: Text(option),
                value: symptoms[option],
                onChanged: (bool checked) {
                  setState(() {
                    if (checked == true) {
                      selected.add(option);
                    } else {
                      selected.remove(option);
                    }
                    symptoms[option] = checked;
                  });
                },
              );
            }).toList(),
          ),
        ),
        Divider(
          color: Colors.blue,
          thickness: 2.0,
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Temperature",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              width: 200,
              child: Container(
                //color: Colors.yellowAccent,
                padding: EdgeInsets.fromLTRB(8.0, 16.0, 0, 16.0),
                child: Form(
                  key: _tempKey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(10),
                            left: Radius.circular(10)),
                      ),
                    ),
                    validator: (String value) {
                      double temp = double.tryParse(value);
                      if (value.isEmpty || temp == null) {
                        return "A valid temperature value is required";
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      temperature = double.parse(value);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.student);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("COVID-19 Health Check"),
            FlatButton(
              child: Resources().logo(context: context),
              onPressed: () {},
            )
          ],
        ),
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
        child: Column(
          children: <Widget>[
            healthForm(),
            RaisedButton(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text("Check Out",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (!_tempKey.currentState.validate()) {
                  return;
                }
                _tempKey.currentState.save();

                Resources().confirmation(context, "Student", "Out");
                //here we can now use the declared variables later
              },
            ),
          ],
        ),
      ),
    );
  }
}

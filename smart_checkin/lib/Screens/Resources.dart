import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'file:///C:/Users/27820/Documents/flutterScripts/smart_checkin/lib/main.dart';

class Resources
{

  //Method to get screen width
  double scaleW(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.width * num;

  }

  //Method to get screen height
  double scaleH(BuildContext context, double num)
  {
    return MediaQuery.of(context).size.height * num;

  }

  //method for displaying form text
  Widget formLabel({String label})
  {
    return Text(label,
    style: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1,
      color: Colors.black
    ),);
  }

  //pop up box to confirm user data
  Widget confirmation(context,String person, String status)
  {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

              content: Container(
                height: scaleH(context, 0.5),
                color: Colors.blue[200],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(person + " has sucessfully checked " + status),

                      Icon(Icons.check_circle_outline, color: Colors.green, size: 50,),

                      Text("Please proceed to security and present this notification"),

                      SizedBox(height: scaleH(context, 0.2),),

                      RaisedButton(
                        child: Text("Done"),
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => StudentHome()
                          ));
                        },
                      )
                    ],
                  ),
                ),
              )
          );
        });
  }

  BuildContext context;

  Widget logo({context})
  {
    return Stack(
        children: [Container(
          width: MediaQuery.of(context).size.width * 0.1,
          height: MediaQuery.of(context).size.height * 0.1,
        ),

        Positioned(
            left: 10,
            top: 15,
            child: Icon(Icons.location_on,
            size: 25,
            color: Colors.blue[800],),
        ),

        Positioned(
            top: 20,
            left: 0,

            child: Icon(Icons.done,
            size: 50,
            color: Colors.blue[800],),
        )]
    );
  }
}
  




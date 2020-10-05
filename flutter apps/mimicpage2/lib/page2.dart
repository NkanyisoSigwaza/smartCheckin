import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listcard.dart';

void main() => runApp(MaterialApp(
  home: Mimic(),
));

class Mimic extends StatefulWidget {

  @override
  _MimicState createState() => _MimicState();
}

class _MimicState extends State<Mimic> {
  List<Widget> details = [
    Temp(icon: Icons.restaurant, heading: "Restaurant Manhattan", subhead: "June 10, 2018",
        money: "170",arrow: Icons.arrow_upward, paint: Colors.red),
    Temp(icon: Icons.attach_money, heading: "Salary Deposit", subhead: "June 1, 2018",
        money: "1,200",arrow: Icons.arrow_downward, paint: Colors.green),
    Temp(icon: Icons.shopping_cart, heading: "Central Market", subhead: "May 28, 2018",
        money: "50",arrow: Icons.arrow_upward, paint: Colors.red),
    Temp(icon: Icons.attach_money, heading: "Salary Deposit", subhead: "May 1, 2018",
        money: "1,200",arrow: Icons.arrow_downward, paint: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0),
            child: Row(children: [
              Expanded(
                flex: 4,
                child: Text("All my accounts",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0
                  ),),
              ),
              Expanded(flex: 1,child: Icon(Icons.equalizer,color: Colors.blueGrey[600])),
            ],
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 0),
            child: Text("June 10, 2018",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),),
          ),

          SizedBox(height: 15.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 10,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),

              Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    width: 330.0,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
                  Positioned(
                      left: 30,
                      top: 20.0,
                      child: Text("Visa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),)),

                  Positioned(
                      left: 25.0,
                      top: 45.0,
                      child: Icon(Icons.view_quilt,
                        color: Colors.yellow,
                        size: 40.0,)),

                  Positioned(
                      left: 30.0,
                      top: 100,
                      child: Text("42012  3049  2800  9815",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                        ),)),

                  Positioned(
                    left: 30.0,
                    bottom: 25.0,
                    child: Text("Expire",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0
                      ),),
                  ),

                  Positioned(
                      left: 63.0,
                      bottom: 23.0,
                      child: Icon(Icons.arrow_right,
                        color: Colors.white,
                        size: 17.0,)),

                  Positioned(
                    left: 85,
                    bottom: 25.0,
                    child: Text("02/22",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),),
                  ),

                  Positioned(
                    right: 70.0,
                    bottom: 25.0,
                    child: Text("CVC CODE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0
                      ),),
                  ),

                  Positioned(
                      right: 53.0,
                      bottom: 23.0,
                      child: Icon(Icons.arrow_right,
                        color: Colors.white,
                        size: 17.0,)),

                  Positioned(
                    right: 30.0,
                    bottom: 25.0,
                    child: Text("230",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold
                      ),),
                  ),

                  Positioned(
                    right: 50.0,
                    top: 30.0,
                    child: Text("Available Balance",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      ),),
                  ),


                  Positioned(
                    right: 50.0,
                    top: 55.0,
                    child: Text("7,392.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        letterSpacing: 2.0,
                      ),),
                  ),


                  Positioned(
                      right: 157.0,
                      top: 60.0,
                      child: Icon(Icons.attach_money,
                        color: Colors.white,
                        size: 20.0,)),

                  Positioned(
                    bottom: -30,
                    left: -30.0,
                    child: FloatingActionButton(
                      onPressed: () {Navigator.pop(context);},
                      backgroundColor: Colors.amber,
                      child: Text("Switch\n  view",
                      style: TextStyle(
                        color: Colors.black
                      ),),
                    ),
                  )
                ],),

              Container(
                width: 10,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(10.0)
                ),
              ),
            ],),

          Padding(
            padding: const EdgeInsets.fromLTRB(150.0, 10.0, 150.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.brightness_1, color: Colors.grey[350], size: 7.0,),
                Icon(Icons.brightness_1, color: Colors.grey[600], size: 9.0,),
                Icon(Icons.brightness_1, color: Colors.grey[350], size: 7.0,)
              ],
            ),
          ),

          Card(
            margin: EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 14.0, 0, 7.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                          child: Text("Income", style: TextStyle(fontSize: 12.0,),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_downward, color: Colors.green,),
                        Text("\$9,302.00",
                          style: TextStyle(color: Colors.green),),
                      ],)
                  ],),

                Container(color: Colors.grey, height: 30, width: 0.5,),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 14.0, 0, 7.0),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(25.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                          child: Text("Expense", style: TextStyle(fontSize: 12.0),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_upward, color: Colors.red,),
                        Text("\$2,790.00", style: TextStyle(
                          color: Colors.red,
                        ),),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(40.0, 15.0, 40.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Details of movements",
                  style: TextStyle(
                      color: Colors.blueGrey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                Icon(Icons.today)
              ],
            ),
          ),
          Column(
            children: details.map((item) => item).toList(),
          )

    ],),
    );
  }
}


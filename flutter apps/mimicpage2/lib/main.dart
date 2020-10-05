import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listcard.dart';
import 'page2.dart';

void main() => runApp(MaterialApp(
  home: Page2(),
));

class Page2 extends StatefulWidget {


  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<Widget> details = [
    Temp(icon: Icons.restaurant, heading: "Restaurant Manhattan", subhead: "June 10, 2018",
        money: "170",arrow: Icons.arrow_upward, paint: Colors.red),
    Temp(icon: Icons.monetization_on, heading: "Deposit Freelance", subhead: "June 7, 2018",
        money: "800",arrow: Icons.arrow_downward, paint: Colors.green),
    Temp(icon: Icons.shopping_cart, heading: "Central", subhead: "June 6, 2018",
        money: "50",arrow: Icons.arrow_upward, paint: Colors.red),
    Temp(icon: Icons.attach_money, heading: "Salary Deposit", subhead: "June 1, 2018",
        money: "4,200",arrow: Icons.arrow_downward, paint: Colors.green),
    Temp(icon: Icons.shopping_cart, heading: "Central Market", subhead: "June 1, 2018",
        money: "37",arrow: Icons.arrow_upward, paint: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Stack(
            overflow: Overflow.visible,
            children: [

              Container(
                width: 450,
                height: 320,
                decoration: BoxDecoration(
                    color: Colors.indigo[800],
                  boxShadow: [BoxShadow(
                    color: Colors.blue,
                    blurRadius: 5,
                    spreadRadius: 2
                  )]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.equalizer, color: Colors.white, textDirection: TextDirection.rtl,),
                          Icon(Icons.today, color: Colors.white,)
                        ],
                      ),
                    ),

                    Text("Available Balance",
                      style: TextStyle(
                          color: Colors.green[300],
                          fontSize: 13,
                          fontWeight: FontWeight.bold
                      ),),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.attach_money, color: Colors.white,),

                          Text("7,392.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              letterSpacing: 2.0,
                            ),),
                        ],),
                    ),

                    Text("June 9, 2018",
                      style: TextStyle(
                        color: Colors.blue[200],
                        fontSize: 12.0,
                      ),),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 40),

                      child: Card(
                        color: Colors.indigo[700],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("42012  3049  2800  9815",
                                style: TextStyle(
                                  color: Colors.grey[350],
                                  letterSpacing: 2.0,
                                  fontSize: 18.0,
                                ),),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 5, 5, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex:3,
                                      child: Text("Expire",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0
                                        ),),
                                    ),

                                    Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_right,
                                        color: Colors.white,
                                        size: 17.0,),
                                    ),

                                    Expanded(
                                      flex: 6,
                                      child: Text("02/22",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        ),),
                                    ),

                                    Expanded(
                                      flex: 4,
                                      child: Text("CVC CODE",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0
                                        ),),
                                    ),

                                    Expanded(
                                      flex: 1,
                                      child: Icon(Icons.arrow_right,
                                        color: Colors.white,
                                        size: 17.0,),
                                    ),

                                    Expanded(
                                      flex: 2,
                                      child: Text("230",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ),

                                  ],),
                              )
                            ],),
                        ),
                      ),
                    )
                  ],),
              ),

              Positioned(
                bottom: -40,
                left: 25,
                child: Card(
                  child: Container(
                    width: 300,
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
                ),
              ),

              Positioned(
                top: 80,
                left: 20.0,
                child: FloatingActionButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Mimic()
                  ));},
                  child: Text("Switch\n  view"),
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 60.0, 20.0, 0),
            child: Row(
              children: [

                Expanded(
                  flex: 12,
                  child: Text("Details of movements",
                    style: TextStyle(
                        color: Colors.blueGrey[500],
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                ),

                Expanded(
                  flex: 2,
                    child: Text("weekly")),

                Expanded(
                  flex: 1,
                    child: Icon(Icons.keyboard_arrow_down))
              ],),
          ),

          Column(
            children: details.map((item) => item).toList(),
          )
        ],),
    );
  }
}


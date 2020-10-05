import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Temp extends StatelessWidget {

var icon;
var heading;
var subhead;
var money;
var arrow;
var paint;

Temp({this.icon, this.heading, this.subhead, this.money, this.arrow, this.paint});

@override
  Widget build(BuildContext context) {
    return(Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5, 20.0, 0),
      child: (Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(flex:2,child: Icon(icon)),

              Expanded(
                flex: 9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(heading,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                      ),),
                    Text(subhead,
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                      ),),
                  ],
                ),
              ),

              Expanded(flex: 3,
                child: Text("\$$money",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: paint,
                  ),),
              ),

              Expanded(flex:1,
                  child: Icon(arrow, color: paint,)),
            ],
          ),
        ),
      )),
    )
    );
}
}
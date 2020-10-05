import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home: card(),
),);

class card extends StatefulWidget {
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {

  int num = 0;
  List nums = [1, 5,7,9,0,8,3,4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Tadda student card"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/f1.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.deepPurpleAccent,
            ),
            Text("Name:",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0,),
            Text("Suprise",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 20.0,),
            Text("School:",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 20.0,),
            Text("University of johannesburg",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 20.0,),

            Text("Levle;",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,

              ),
            ),
            Text("$num",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                ),
                SizedBox(width: 5.0,),
                Text(
                    "ns.ngoveni079@gmail.com",
                  style: TextStyle(
                    color:  Colors.white,
                    fontSize: 14,
                    letterSpacing: 2.0,
                  ),),

              ],
            ),
            SizedBox(height: 30.0,),
            Center(
              child: FloatingActionButton(
                onPressed: () {setState(() {
                  num += 1;
                });},
                backgroundColor: Colors.blue,
                child: Text("Share"),
              ),
            ),
            Column(
              children: nums.map((e) => Text(e.toString())).toList(),
            ),
          ],
        ),
      ),

    );
  }
}



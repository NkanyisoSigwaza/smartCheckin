import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Bankhome(),
));

class Bankhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[150],

    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [Padding(
      padding: EdgeInsets.fromLTRB(20.0, 25.0, 10.0, 0),
      child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text("All my accounts",
              style: TextStyle(
                color: Colors.blue[950],
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Expanded(
                flex: 1,
                child: Icon(
                    Icons.equalizer,
                color: Colors.grey,))
          ],
        ),
    ),
      Padding(
        padding: EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 0),
        child: Text("June 10, 2018",
        style: TextStyle(
          color: Colors.black12,
          fontWeight: FontWeight.bold,
        ),),
      ),
      SizedBox(height: 0,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10.0),
              ),
            ),

          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                image: AssetImage("assets/visa.jpg"),),
            ),
          ),
          Container(
            height: 200.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ],
      ),

      Center(
        child: Container(
          width: 330.0,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.grey[200],
              blurRadius: 2.0,
              spreadRadius: 1.0,
            ),],
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0)
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text("  Income  "),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.arrow_downward, color: Colors.green,),
                        SizedBox(width: 5.0,),
                        Text("\$9,302.00", style: TextStyle(color: Colors.green))
                      ],
                    ),
                      ],
                    ),
              ),
              Column(
               children: [

                 Container(
                   decoration: BoxDecoration(
                       border: Border.all(color: Colors.black),
                       borderRadius: BorderRadius.circular(10.0),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(3.0),
                     child: Text("  Expense  "),
                   ),
                 ),
                 Row(
                   children: [
                     Icon(Icons.arrow_upward, color: Colors.red,),
                     SizedBox(width: 5.0,),
                     Text("\$2,790,00", style: TextStyle(color: Colors.red),)

                   ],
              )],
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(45.0, 20.0, 20.0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Text("Details of movements",
              style: TextStyle(
                color: Colors.blue[930],
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Expanded(flex: 1,child: Icon(Icons.account_balance_wallet))
          ],
        ),
      ),

      Padding(
        padding: EdgeInsets.fromLTRB(45.0, 20.0, 20.0, 0),
        child: Container(

            width: 330.0,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                ),],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0)
            ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.restaurant),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Restaurant Manhattan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("June 10, 2018",)
                  ],
                ),
                SizedBox(width: 60),
                Text("\$170", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                SizedBox(width: 5,),
                Icon(Icons.arrow_upward, color: Colors.red,)
              ],
            ),
          )
        ),
      ),

      Padding(
        padding: EdgeInsets.fromLTRB(45.0, 20.0, 20.0, 0),
        child: Container(

            width: 330.0,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                ),],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Central Market",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                      Text("May 1, 2018",)
                    ],
                  ),
                  SizedBox(width: 110),
                  Text("\$50", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_upward, color: Colors.red,)
                ],
              ),
            )
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(45.0, 20.0, 20.0, 0),
        child: Container(

            width: 330.0,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                ),],
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.monetization_on),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Salary Deposit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                        ),),
                      Text("may 29, 2018",)
                    ],
                  ),
                  SizedBox(width: 95),
                  Text("\$1,200", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_downward, color: Colors.green,)
                ],
              ),
            )
        ),
      )

    ],

    ),
    );
  }
}






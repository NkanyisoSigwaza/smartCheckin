import "package:flutter/material.dart";



class UserDrawer extends StatefulWidget {
  @override
  _UserDrawerState createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:MediaQuery.of(context).size.width/2),
      color:Colors.cyan,
      child: ListView(
        children: <Widget>[
          Container(


            height:300,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[800],
              ),


              accountName: Padding(
                padding: const EdgeInsets.only(bottom:12),
                child: Text("Ower Name"),
              ),
              accountEmail: Text("Email"),
              currentAccountPicture:CircleAvatar(
                radius:50,
                backgroundImage:AssetImage("iconImage.jpg") ,
                backgroundColor: Colors.grey[400],


              ),
            ),
          ),

          ListTile(
            title:Text(
              "Sign out",
              style: TextStyle(
                  color:Colors.red
              ),
            ),

          ),
          Divider(
            height:5,
            color:Colors.black,
          ),
        ],
      ),
    );
  }
}
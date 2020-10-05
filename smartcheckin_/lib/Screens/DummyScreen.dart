import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartcheckin_/States/DummyState.dart';

class DummyScreen extends StatefulWidget {
  @override
  _DummyScreenState createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  @override
  Widget build(BuildContext context) {

    final dummyStateScreen = Provider.of<DummyState>(context);

    return Scaffold(
      body: Column(
        children: [
          Text(
            "Gona add some data!"
          ),
          TextFormField(
            controller: dummyStateScreen.name,
            decoration: InputDecoration(
              hintText: "Name",

            ),



          ),
          TextFormField(
            controller: dummyStateScreen.Surname,
            decoration: InputDecoration(
                hintText: "Surname"
            ),



          ),
          TextFormField(
            controller: dummyStateScreen.email,
            decoration: InputDecoration(
                hintText: "Email"
            ),



          ),
          FlatButton(
            onPressed: ()async{
             await dummyStateScreen.updateUserInfo();
              dummyStateScreen.updateClicked();
            },
            child: Text("update"),
          )
        ],
      ),
    );
  }
}

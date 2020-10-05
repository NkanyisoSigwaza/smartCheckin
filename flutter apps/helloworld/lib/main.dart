import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books.dart';
import 'cards.dart';

void main() => runApp(MaterialApp(
    home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List library = [Book("rick warren", "purpose driven life"),
  Book("prophets", "bible"),
  Book("PS Mathebula", "21 secrets to success")];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("testing classes"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: library.map((item) => cards(
              book: item,
              delete: () {setState(() {
            library.remove(item);
          });})).toList(),
        ),
      );

    }
}

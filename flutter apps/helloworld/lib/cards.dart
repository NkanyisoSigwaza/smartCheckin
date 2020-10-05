import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'books.dart';

class cards extends StatelessWidget {

  var book;
  Function delete;
  cards({this.book, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(book.author),
              SizedBox(height: 5
                ,),
              Text(book.title)
              ,
            SizedBox(height: 2.0,),
            FlatButton.icon(
                onPressed: delete,
                label: Text("Delete book"),
              icon: Icon(Icons.delete), )]
        ),
      ),
    );
  }
}

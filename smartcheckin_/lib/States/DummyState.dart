
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class DummyState with ChangeNotifier{

  TextEditingController name = TextEditingController();
  TextEditingController Surname = TextEditingController();
  TextEditingController email = TextEditingController();
  DummyState(){

  }

  updateClicked(){
    print(name.text);
    print(Surname.text);
    print(email.text);
  }

  updateUserInfo() async{

    await Firestore.instance.collection("Users").add({
      "name":name.text,
      "surname": Surname.text,
      "email":email.text,
      "address":{
        "firstAddress": "Ladysmith",
        "seccondAddress": "CapeTown"
      }
    });
  }








}
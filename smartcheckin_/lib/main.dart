import 'package:flutter/material.dart';
import 'package:smartcheckin_/Models/healthDetails.dart';
import 'package:smartcheckin_/Screens/studentCheckOut.dart';
import 'package:smartcheckin_/Screens/visitorCheckIn.dart';
import 'package:smartcheckin_/Screens/visitorCheckOut.dart';
//welcome screens
import 'Screens/welcomeScreens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
      "/studentcheckout": (context) => StudentCheckOut(),
      "/visitorcheckout": (context) => VisitorCheckOut(),
      "/visitorcheckin": (context) => VisitorCheckIn(),
      "/healthdetails": (context) => HealthDetails(),
    },
    );
  }
}

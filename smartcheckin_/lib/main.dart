import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//security screens
import 'package:smartcheckin_/Models/healthDetails.dart';
import 'package:smartcheckin_/Screens/DummyScreen.dart';
import 'package:smartcheckin_/Screens/securityScreens/studentCheckOut.dart';
import 'package:smartcheckin_/Screens/securityScreens/visitorCheckIn.dart';
import 'package:smartcheckin_/Screens/securityScreens/visitorCheckOut.dart';
import 'package:smartcheckin_/States/DummyState.dart';
//welcome screens
import 'Screens/welcomeScreens/HomeScreen.dart';
//student screens
import 'package:smartcheckin_/Screens/studentScreens/main.dart';
//manager screens
import 'package:smartcheckin_/Screens/managerScreens/ManagerAnnouncements.dart';
import 'package:smartcheckin_/Screens/managerScreens/ManagerCustomReport.dart';
import 'package:smartcheckin_/Screens/managerScreens/ManagerReport.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hbk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ManagerCustomReport(),
      routes: {
      "/studentcheckout": (context) => StudentCheckOut(),
      "/visitorcheckout": (context) => VisitorCheckOut(),
      "/visitorcheckin": (context) => VisitorCheckIn(),
      "/healthdetails": (context) => HealthDetails(),
      "/homesccreen": (context) => HomeScreen(),
      "/managerannouncement": (context) => ManagerAnnouncements(),
      "/managercustomer": (context) => ManagerCustomReport(),
      "/managereport": (context) => ManagerReport(),
      "/studentscreens": (context) => SecurityHome(),
    },
    );
  }
}




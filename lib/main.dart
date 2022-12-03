import 'package:flutter/material.dart';
import 'package:iotai/Pages/Charts.dart';
import 'package:iotai/Pages/IntroScreen.dart';
import 'package:iotai/Pages/LogIn.dart';
import 'package:iotai/Pages/Notification.dart';
import 'package:iotai/Pages/SignUp.dart';
import 'Pages/Devices.dart';
import 'Pages/Recommandations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}


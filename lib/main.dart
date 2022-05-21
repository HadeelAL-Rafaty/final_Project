// @dart=2.9
//import 'package:camera/camera.dart';
import 'package:camera/camera.dart';
import 'package:final_project/NewScreen/LandingScreen.dart';
import 'package:final_project/Screen/HomeScreen.dart';
import 'package:final_project/Screen/LoginScreen.dart';
import 'package:flutter/material.dart';

import 'Screen/CameraScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  camera = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "OpenSans",
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E)),
     // home: LandingScreen(),
      home: Homescreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hazir_ta/common_screens/loginScreen.dart';
import 'package:hazir_ta/student_screens/studentcoursePage.dart';
import 'package:hazir_ta/student_screens/student_dashboard.dart';
import 'package:hazir_ta/student_screens/tutorProfileScreen.dart';
import 'package:hazir_ta/tutor_screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(101, 40, 110, 1),
        accentColor: Color.fromRGBO(108, 60, 99, 1),
        primaryColorLight: Color.fromRGBO(213, 196, 190, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}



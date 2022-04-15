//import 'dart:js';

import 'package:fitness_flutter/pages/registration.dart';
import 'package:fitness_flutter/tabs/Programs.dart';
import 'package:fitness_flutter/tabs/tabs.dart';
//import 'package:fitness_flutter/tabs/tabs.dart';
//import 'package:fitness_flutter/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    RegistrationPage.tag: (context) => RegistrationPage(),
    Programs.tag: (context) => Programs(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
} 
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Geometria'),
      home: Scaffold(
        body: Tabs(),
      ),
    );
  }
}

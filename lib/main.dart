import 'package:flutter/material.dart';
import 'package:login_screen/login_screen.dart';
import 'package:login_screen/FAQ_screen.dart';
import 'package:login_screen/menu.dart';
import 'package:login_screen/MenuTest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MenuTest(),
    );
  }
}


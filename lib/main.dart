import 'package:drive/constants.dart';
import 'package:drive/home_screen/body.dart';
import 'package:flutter/material.dart';

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
        primaryColor: Color(0xFFF2F5F8),
        scaffoldBackgroundColor: primaryColor
      ),
      home: Body(),
    );
  }
}

import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'SignUpScreen.dart';
import 'WelcomeScreen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(), // Set WelcomeScreen as the initial screen
    );
  }
}

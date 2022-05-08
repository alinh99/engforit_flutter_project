import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Welcome/welcome_screen.dart';

import 'package:flutter_eft_final/constants.dart';
import 'package:flutter_eft_final/Screens/Home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Cairo",
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: WelcomeScreen(),
    );
  }
}

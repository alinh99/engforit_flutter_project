import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Signup/components/body.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = "signup_screen";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

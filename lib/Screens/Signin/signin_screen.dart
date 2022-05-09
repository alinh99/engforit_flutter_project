import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Signin/components/body.dart';

class SignInScreen extends StatefulWidget {
  static const String id = "signin_screen";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

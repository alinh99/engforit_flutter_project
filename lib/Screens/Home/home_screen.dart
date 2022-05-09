import 'package:flutter/material.dart';
import 'package:flutter_eft_final/components/bottom_nav_bar.dart';
import 'package:flutter_eft_final/Screens/Home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "home_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}

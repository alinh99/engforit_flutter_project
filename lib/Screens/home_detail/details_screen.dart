import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_eft_final/constants.dart';
import 'package:flutter_eft_final/components/bottom_nav_bar.dart';
import 'package:flutter_eft_final/Screens/home_detail/components/body.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = "details_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}

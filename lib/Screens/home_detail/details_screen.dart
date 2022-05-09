import 'package:flutter/material.dart';
import 'package:flutter_eft_final/components/bottom_nav_bar.dart';
import 'package:flutter_eft_final/Screens/Home_detail/components/body.dart';

class DetailsScreen extends StatefulWidget {
  static const String id = "details_screen";

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}

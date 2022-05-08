import 'package:flutter/material.dart';

import 'package:flutter_eft_final/components/bottom_nav_bar.dart';
import 'package:flutter_eft_final/Screens/Home_detail/components/body.dart';

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

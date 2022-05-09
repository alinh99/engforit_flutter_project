import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_eft_final/constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "All Skills",
            icon: CupertinoIcons.home,
          ),
          BottomNavItem(
            title: "All Exercises",
            icon: CupertinoIcons.book,
            isActive: true,
          ),
          BottomNavItem(
            title: "Settings",
            icon: CupertinoIcons.settings,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.icon,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            size: 35.0,
            color: isActive ? kPrimaryColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kPrimaryColor : kTextColor),
          ),
        ],
      ),
    );
  }
}

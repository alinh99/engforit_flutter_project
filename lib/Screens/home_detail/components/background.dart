import 'package:flutter/material.dart';
import 'package:flutter_eft_final/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: kBlueLightColor,
            image: DecorationImage(
              image: AssetImage("assets/images/meditation_bg.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}

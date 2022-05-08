import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          child: SvgPicture.asset("assets/icons/pilates_gpdb.svg"),
          color: kPrimaryLightColor,
          // Here the height of the container is 45% of our total height
          height: size.height * .45,
          // decoration: BoxDecoration(
          //   color: kBlueLightColor,
          // ),
        ),
        child,
      ],
    );
  }
}

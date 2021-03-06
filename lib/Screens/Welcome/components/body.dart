import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Signin/signin_screen.dart';
import 'package:flutter_eft_final/Screens/Signup/signup_screen.dart';
import 'package:flutter_eft_final/Screens/Welcome/components/background.dart';
import 'package:flutter_eft_final/components/rounded_button.dart';
import 'package:flutter_eft_final/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool showSpinner = false;
    // This size provide us total height and width of our screen
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "WELCOME TO EFT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              SvgPicture.asset(
                'assets/icons/chat.svg',
                placeholderBuilder: (BuildContext context) => Container(
                  child: const CircularProgressIndicator(
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation(kPrimaryColor),
                  ),
                ),
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                text: "SIGN IN",
                press: () {
                  setState(() {
                    showSpinner = true;
                  });
                  Navigator.pushNamed(context, SignInScreen.id);
                  setState(() {
                    showSpinner = false;
                  });
                },
              ),
              RoundedButton(
                text: "SIGN UP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press: () {
                  setState(() {
                    showSpinner = true;
                  });
                  Navigator.pushNamed(context, SignUpScreen.id);
                  setState(() {
                    showSpinner = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

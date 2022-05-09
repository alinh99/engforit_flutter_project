import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Signin/signin_screen.dart';
import 'package:flutter_eft_final/Screens/Signup/components/background.dart';
import 'package:flutter_eft_final/Screens/Signup/components/or_divider.dart';
import 'package:flutter_eft_final/Screens/Signup/components/social_icon.dart';
import 'package:flutter_eft_final/components/already_have_an_account_acheck.dart';
import 'package:flutter_eft_final/components/rounded_button.dart';
import 'package:flutter_eft_final/components/rounded_input_field.dart';
import 'package:flutter_eft_final/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_eft_final/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _auth = FirebaseAuth.instance;
    String email;
    String password;
    bool showSpinner = false;
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                placeholderBuilder: (BuildContext context) => Container(
                  child: const CircularProgressIndicator(
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation(kPrimaryColor),
                  ),
                ),
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {
                  email = value;
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  password = value;
                },
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, SignInScreen.id);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignInScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

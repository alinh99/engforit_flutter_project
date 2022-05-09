import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Home/home_screen.dart';
import 'package:flutter_eft_final/Screens/Signin/components/background.dart';
import 'package:flutter_eft_final/Screens/Signup/signup_screen.dart';
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
    final _auth = FirebaseAuth.instance;
    String email;
    String password;
    bool showSpinner = false;
    Size size = MediaQuery.of(context).size;
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGN IN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                placeholderBuilder: (BuildContext context) => Container(
                  child: const CircularProgressIndicator(
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation(kPrimaryColor),
                  ),
                ),
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
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
                text: "LOGIN",
                press: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final userLogin = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (userLogin != null) {
                      Navigator.pushNamed(context, HomeScreen.id);
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
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

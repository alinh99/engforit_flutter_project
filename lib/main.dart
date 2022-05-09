import 'package:flutter/material.dart';
import 'package:flutter_eft_final/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_eft_final/constants.dart';
import 'package:flutter_eft_final/Screens/Home/home_screen.dart';
import 'package:flutter_eft_final/Screens/Home_detail/details_screen.dart';
import 'package:flutter_eft_final/Screens/Signin/signin_screen.dart';
import 'package:flutter_eft_final/Screens/Signup/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EFTApp());
}

class EFTApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Cairo",
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        DetailsScreen.id: (context) => DetailsScreen(),
      },
    );
  }
}

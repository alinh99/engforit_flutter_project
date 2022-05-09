import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eft_final/components/category_card.dart';
import 'package:flutter_eft_final/components/search_bar.dart';
import 'package:flutter_eft_final/Screens/home_detail/details_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_eft_final/constants.dart';
import 'background.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _auth = FirebaseAuth.instance;
  User loggedInUser;
  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: kBlueLightColor,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("assets/icons/menu.svg"),
                ),
              ),
              Text(
                "Good Mornign \n",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    .copyWith(fontWeight: FontWeight.w900),
              ),
              SearchBar(),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: .85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    CategoryCard(
                      title: "Listening",
                      icon: CupertinoIcons.headphones,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Speaking",
                      icon: CupertinoIcons.mic,
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Reading",
                      icon: CupertinoIcons.book,
                      press: () {
                        Navigator.pushNamed(context, DetailsScreen.id);
                      },
                    ),
                    CategoryCard(
                      title: "Writing",
                      icon: CupertinoIcons.pencil,
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

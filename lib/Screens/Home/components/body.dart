import 'package:flutter/material.dart';
import 'package:flutter_eft_final/components/category_card.dart';
import 'package:flutter_eft_final/components/search_bar.dart';
import 'package:flutter_eft_final/Screens/home_detail/details_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_eft_final/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

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
                "Good Mornign \nShishir",
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
                      title: "Diet Recommendation",
                      svgSrc: "assets/icons/Hamburger.svg",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Kegel Exercises",
                      svgSrc: "assets/icons/Excrecises.svg",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Meditation",
                      svgSrc: "assets/icons/Meditation.svg",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return DetailsScreen();
                          }),
                        );
                      },
                    ),
                    CategoryCard(
                      title: "Yoga",
                      svgSrc: "assets/icons/yoga.svg",
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

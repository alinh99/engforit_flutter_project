import 'package:flutter/material.dart';
import 'package:flutter_eft_final/components/search_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_eft_final/constants.dart';
import 'package:flutter_eft_final/components/seassion_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                "Meditation",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    .copyWith(fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10),
              Text(
                "3-10 MIN Course",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: size.width * .6, // it just take 60% of total width
                child: Text(
                  "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                ),
              ),
              SizedBox(
                width: size.width * .5, // it just take the 50% width
                child: SearchBar(),
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: <Widget>[
                  SeassionCard(
                    seassionNum: 1,
                    isDone: true,
                    press: () {},
                  ),
                  SeassionCard(
                    seassionNum: 2,
                    press: () {},
                  ),
                  SeassionCard(
                    seassionNum: 3,
                    press: () {},
                  ),
                  SeassionCard(
                    seassionNum: 4,
                    press: () {},
                  ),
                  SeassionCard(
                    seassionNum: 5,
                    press: () {},
                  ),
                  SeassionCard(
                    seassionNum: 6,
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Meditation",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.all(10),
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 17),
                      blurRadius: 23,
                      spreadRadius: -13,
                      color: kShadowColor,
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/icons/Meditation_women_small.svg",
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Basic 2",
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text("Start your deepen you practice")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: SvgPicture.asset("assets/icons/Lock.svg"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/components/splash_content.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to tokoto, Let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text":
          "We help people contact with store \n around United State of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop. \n Just stay at home with us",
      "image": "assets/images/splash_3.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(
                  () {
                    currentPage = value;
                  },
                );
              },
              itemCount: splashData.length,
              itemBuilder: (contex, index) => SplashContent(
                text: splashData[index]["text"],
                image: splashData[index]["image"],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  DefaultButton(
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    text: "Continue",
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: currentPage == index ? 20 : 6,
      height: 6,
      margin: EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class SplashContent extends StatelessWidget {
  final String? text, image;
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2),
        Text(
          "TOKOTO",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 3),
        Image.asset(
          image!,
          width: getProportionateScreenWidth(270),
          height: getProportionateScreenHeight(270),
        )
      ],
    );
  }
}

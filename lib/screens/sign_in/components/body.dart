import 'package:flutter/material.dart';
import 'package:shop_app/components/already_have_an_account_check.dart';
import 'package:shop_app/components/social_card.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in wih your email and password \n or continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      press: () {},
                      iconSrc: "assets/icons/google-icon.svg",
                    ),
                    SocialCard(
                      press: () {},
                      iconSrc: "assets/icons/facebook-2.svg",
                    ),
                    SocialCard(
                      press: () {},
                      iconSrc: "assets/icons/twitter.svg",
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(15)),
                AlreadyHaveAnAccountCheck(
                  signIn: true,
                  press: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

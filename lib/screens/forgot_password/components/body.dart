import 'package:flutter/material.dart';
import 'package:shop_app/components/already_have_an_account_check.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/forgot_password/components/forgot_pass_form.dart';
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
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                ForgotPassForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                DefaultButton(
                  text: "Continue",
                  press: () {},
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.15),
                AlreadyHaveAnAccountCheck(),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

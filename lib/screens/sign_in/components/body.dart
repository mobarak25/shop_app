import 'package:flutter/material.dart';

import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/rounded_input_text_field.dart';

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
          child: Column(
            children: [
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
              SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          RoundedInputTextField(
            hintText: "Enter your email",
            labelText: "Email",
            iconSrc: "assets/icons/Mail.svg",
            onChanged: (value) {},
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          RoundedInputTextField(
            hintText: "Enter your password",
            labelText: "Password",
            iconSrc: "assets/icons/Lock.svg",
            onChanged: (value) {},
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefultButton(
            press: () {},
            text: "Continue",
          ),
        ],
      ),
    );
  }
}

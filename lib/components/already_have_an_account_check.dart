import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool signIn;
  final VoidCallback? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.signIn = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(signIn ? "Don't have an account? " : "Already have an account? "),
        GestureDetector(
          onTap: press,
          child: Text(
            signIn ? "Sign Up" : "Sign In",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "Complete Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Complete your profile or continue\n with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(60),
              ),
              DefaultButton(
                text: "Continue",
                press: () {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                },
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              Text(
                "By cintinuing your confirm that you agree \nwith our Team and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "First Name",
              hintText: "Enter your first name",
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Last Name",
              hintText: "Enter your Last name",
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/User.svg",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Phone Number",
              hintText: "Enter your phone number",
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Phone.svg",
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Address",
              hintText: "Enter your address",
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Location_Point.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

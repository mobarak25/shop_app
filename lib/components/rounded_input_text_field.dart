import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class RoundedInputTextField extends StatelessWidget {
  final String? hintText, labelText, iconSrc;
  final ValueChanged<String> onChanged;

  const RoundedInputTextField({
    Key? key,
    this.hintText,
    this.labelText,
    this.iconSrc,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.fromLTRB(42, 15, 5, 15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kTextColor),
          borderRadius: BorderRadius.circular(30),
          gapPadding: 8,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kTextColor),
          borderRadius: BorderRadius.circular(30),
          gapPadding: 8,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(
            0,
            getProportionateScreenWidth(18),
            getProportionateScreenHeight(18),
            getProportionateScreenHeight(18),
          ),
          child: SvgPicture.asset(
            iconSrc!,
            height: getProportionateScreenHeight(20),
          ),
        ),
      ),
    );
  }
}

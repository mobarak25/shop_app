import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileMenu extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;
  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: getProportionateScreenWidth(20)),
      child: InkWell(
        onTap: press,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(20),
          ),
          decoration: BoxDecoration(
            color: kTextColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                color: kPrimaryColor,
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: kTextColor,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

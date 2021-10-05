import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';

import '../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIconBtn(
            icon: Icons.keyboard_arrow_left,
            press: () {
              Navigator.pop(context);
            },
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Text(
                  "$rating",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                SvgPicture.asset("assets/icons/Star Icon.svg")
              ],
            ),
          )
        ],
      ),
    );
  }
}

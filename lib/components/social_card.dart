import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/size_config.dart';

class SocialCard extends StatelessWidget {
  final String? iconSrc;
  final VoidCallback press;
  const SocialCard({
    Key? key,
    this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: getProportionateScreenHeight(50),
        height: getProportionateScreenWidth(50),
        padding: EdgeInsets.all(getProportionateScreenWidth(13)),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(7)),
        decoration: BoxDecoration(
          color: Color(0xfff5f6f9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc!,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}

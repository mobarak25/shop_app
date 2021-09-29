import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String svgIcon;
  const CustomSuffixIcon({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(18),
        getProportionateScreenHeight(18),
        getProportionateScreenHeight(18),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(20),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            width: getProportionateScreenHeight(50),
            height: getProportionateScreenWidth(50),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                  width: getProportionateScreenHeight(16),
                  height: getProportionateScreenWidth(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "$numOfItems",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenHeight(12),
                        height: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
            ),
        ],
      ),
    );
  }
}

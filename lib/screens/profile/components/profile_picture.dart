import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(115),
      height: getProportionateScreenWidth(115),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            child: Image.asset("assets/images/Profile Image.png"),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: Container(
              width: 45,
              height: 45,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xfff3f4f8),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
            ),
          ),
        ],
      ),
    );
  }
}

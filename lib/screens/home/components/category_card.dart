import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/size_config.dart';

class CategoryCard extends StatelessWidget {
  final String icon, text;
  final GestureTapCallback press;

  const CategoryCard({
    Key? key,
    this.icon = "",
    this.text = "",
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFFFECDF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(height: 1.2),
            )
          ],
        ),
      ),
    );
  }
}

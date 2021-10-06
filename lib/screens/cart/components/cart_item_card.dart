import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  final String title, image;
  final dynamic price;
  final int numOfIten;
  const CartItemCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.numOfIten,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(image),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            SizedBox(height: getProportionateScreenWidth(8)),
            Text.rich(
              TextSpan(
                text: "\$$price",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                    text: " X$numOfIten",
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

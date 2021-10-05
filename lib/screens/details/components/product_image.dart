import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductIpages extends StatefulWidget {
  const ProductIpages({Key? key}) : super(key: key);

  @override
  _ProductIpagesState createState() => _ProductIpagesState();
}

class _ProductIpagesState extends State<ProductIpages> {
  int selected = 0;

  Map<String, dynamic> productImages = {
    "id": 1,
    "title": "Wireless Controller for PD4",
    "images": [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    "price": 70.99,
    "isFavourite": false,
  };
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(productImages["images"][selected]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              productImages["images"].length,
              (index) => productSmallImage(index),
            )
          ],
        )
      ],
    );
  }

  GestureDetector productSmallImage(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenWidth(48),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selected == index ? kPrimaryColor : Colors.transparent),
        ),
        child: Image.asset(productImages["images"][index]),
      ),
    );
  }
}

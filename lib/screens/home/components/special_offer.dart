import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SpecialOfferCard(
            category: 'Smartphone',
            image: 'assets/images/Image Banner 2.png',
            numOffBrands: 18,
            press: () {},
          ),
          SpecialOfferCard(
            category: 'Smartphone',
            image: 'assets/images/Image Banner 3.png',
            numOffBrands: 24,
            press: () {},
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          )
        ],
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  final String image, category;
  final int numOffBrands;
  final GestureTapCallback press;

  const SpecialOfferCard({
    Key? key,
    required this.image,
    required this.category,
    required this.numOffBrands,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenHeight(116),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(18),
                    vertical: getProportionateScreenHeight(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "$numOffBrands Brands",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

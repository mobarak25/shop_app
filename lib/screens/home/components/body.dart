import 'package:flutter/material.dart';
import 'package:shop_app/components/section_title.dart';
import 'package:shop_app/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offer.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(40)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(40)),
            SectionTitle(
              press: () {},
              title: "Special for you",
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            SpecialOffer(),
            SizedBox(height: getProportionateScreenHeight(40)),
            SectionTitle(
              press: () {},
              title: "Popular Product",
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(40)),
          ],
        ),
      ),
    );
  }
}

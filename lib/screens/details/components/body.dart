import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_app_bar.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomAppBar(
              rating: 4.7,
            ),
            ProductIpages(),
            SizedBox(height: 30),
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    description:
                        'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
                    isFavorite: true,
                    seeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                          ),
                          child: Row(
                            children: [
                              ColorDots(),
                              Spacer(),
                              RoundedIconBtn(
                                icon: Icons.remove,
                                press: () {},
                              ),
                              SizedBox(width: 20),
                              RoundedIconBtn(
                                icon: Icons.add,
                                press: () {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenHeight(15),
                              bottom: getProportionateScreenHeight(40),
                            ),
                            child: DefaultButton(
                              text: "Add to Cart",
                              press: () {
                                Navigator.pushNamed(
                                    context, CartScreen.routeName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

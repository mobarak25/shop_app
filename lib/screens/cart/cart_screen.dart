import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'components/body.dart';
import 'components/check_our_cart.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: Body(),

        // Botom Navigation bar
        bottomNavigationBar: CheckOurCard(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Text(
            "4 Items",
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

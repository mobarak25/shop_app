import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: Icon(
        Icons.arrow_back_ios,
        size: 18,
      ),
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

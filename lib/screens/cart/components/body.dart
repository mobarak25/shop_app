import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> demoCarts = [
      {
        "title": "Wireless Controller for PS4™",
        "image": "assets/images/Image Popular Product 1.png",
        "price": 99.99,
        "numOfItems": 2,
      },
      {
        "title": "Nike Sport White - Man Pant",
        "image": "assets/images/Image Popular Product 2.png",
        "price": 100,
        "numOfItems": 3,
      },
      {
        "title": "Logitech Head",
        "image": "assets/images/Image Popular Product 3.png",
        "price": 64.99,
        "numOfItems": 5,
      },
    ];
    return Column(
      children: [
        ...List.generate(
          demoCarts.length,
          (index) => Dismissible(
            key: Key(
              demoCarts[index].toString(),
            ),
            child: CartItemCard(
              image: demoCarts[index]["image"],
              title: demoCarts[index]["title"],
              price: demoCarts[index]["price"],
              numOfIten: demoCarts[index]["numOfItems"],
            ),
          ),
        ),
      ],
    );
  }
}

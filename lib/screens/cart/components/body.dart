import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        "title":
            "Nike Sport White - Man Pant Nike Sport White - Man Pant Nike Sport White - Man Pant",
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
      {
        "title": "Wireless Controller for PS4™",
        "image": "assets/images/Image Popular Product 1.png",
        "price": 99.99,
        "numOfItems": 2,
      },
      {
        "title":
            "Nike Sport White - Man Pant Nike Sport White - Man Pant Nike Sport White - Man Pant",
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
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          Container(
            padding: EdgeInsets.only(bottom: getProportionateScreenWidth(20)),
            width: double.infinity,
            child: Text(
              "Wano Store",
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          //here we need Expanded otherwise listView.bulder will showing blank page
          Expanded(
            child: ListView.builder(
              itemCount: demoCarts.length,
              itemBuilder: (context, index) => Dismissible(
                direction: DismissDirection.endToStart,
                key: Key(demoCarts[index].toString()),
                background: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      SvgPicture.asset("assets/icons/Trash.svg"),
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: getProportionateScreenWidth(10)),
                  child: CartItemCard(
                    image: demoCarts[index]["image"],
                    title: demoCarts[index]["title"],
                    price: demoCarts[index]["price"],
                    numOfIten: demoCarts[index]["numOfItems"],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

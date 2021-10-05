import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'product_card.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> popularProduct = [
      {
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
      },
      {
        "id": 2,
        "title": "Nike Sport White - Man Pant",
        "image": "assets/images/Image Popular Product 2.png",
        "images": [
          "assets/images/Image Popular Product 2.png",
        ],
        "price": 55.99,
        "isFavourite": true,
      },
      {
        "id": 3,
        "title": "Glover Head Cover ",
        "images": [
          "assets/images/Image Popular Product 3.png",
        ],
        "price": 105.99,
        "isFavourite": false,
      },
      {
        "id": 4,
        "title": "Wireless Controller for PD4",
        "images": [
          "assets/images/Image Popular Product 1.png",
        ],
        "price": 70.99,
        "isFavourite": false,
      },
      {
        "id": 5,
        "title": "Nike Sport White - Man Pant",
        "images": [
          "assets/images/Image Popular Product 2.png",
        ],
        "price": 55.99,
        "isFavourite": true,
      },
      {
        "id": 6,
        "title": "Glover Head Cover ",
        "images": [
          "assets/images/Image Popular Product 3.png",
        ],
        "price": 105.99,
        "isFavourite": false,
      },
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            popularProduct.length,
            (index) => ProductCart(
              image: popularProduct[index]["images"][0],
              title: popularProduct[index]["title"],
              price: popularProduct[index]["price"],
              isFavourite: popularProduct[index]["isFavourite"],
              press: () {
                Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                );
              },
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}

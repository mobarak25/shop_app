import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_app_bar.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';
import 'product_description.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomAppBar(
            rating: 4.7,
          ),
          ProductIpages(),
          ProductDescription(
            description:
                'Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …',
            isFavorite: true,
            seeMore: () {},
          ),
          TopRoundedContainer(
            color: Color(0xFFF6F1F1),
            child: Row(
              children: [Text("data")],
            ),
          )
        ],
      ),
    );
  }
}

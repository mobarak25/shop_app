import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'top_rounded_container.dart';

class ProductDescription extends StatelessWidget {
  final String description;
  final bool isFavorite;
  final GestureTapCallback seeMore;

  const ProductDescription({
    Key? key,
    required this.description,
    this.isFavorite = true,
    required this.seeMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopRoundedContainer(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Text(
              "Wireless Controller for PD4",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: getProportionateScreenWidth(64),
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              decoration: BoxDecoration(
                  color: isFavorite
                      ? kPrimaryColor.withOpacity(0.15)
                      : kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )),
              child: SvgPicture.asset(
                "assets/icons/Heart Icon_2.svg",
                color: isFavorite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(60),
            ),
            child: Text(
              description,
              maxLines: 3,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: GestureDetector(
              onDoubleTap: seeMore,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "See More Details",
                    style: TextStyle(
                      height: 1,
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

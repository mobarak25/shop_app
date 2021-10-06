import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({Key? key}) : super(key: key);

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selected = 0;
  List<Color> productColors = [
    Color(0xFFF6625E),
    Color(0xFF836DB8),
    Color(0xFFDECB9C),
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          productColors.length,
          (index) => buildColor(index),
        )
      ],
    );
  }

  GestureDetector buildColor(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(2)),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selected == index ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: productColors[index],
          ),
        ),
      ),
    );
  }
}

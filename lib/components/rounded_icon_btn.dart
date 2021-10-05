import 'package:flutter/material.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}

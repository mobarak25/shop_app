import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

class SiteBottomNavigationBar extends StatelessWidget {
  final MenuState selectedMenu;
  const SiteBottomNavigationBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFDADADA).withOpacity(0.3),
            blurRadius: 7,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: SvgPicture.asset(
              "assets/icons/Shop Icon.svg",
              color: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : kSecondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Heart Icon.svg",
              color: MenuState.favourite == selectedMenu
                  ? kPrimaryColor
                  : kSecondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/Chat bubble Icon.svg",
              color: MenuState.message == selectedMenu
                  ? kPrimaryColor
                  : kSecondaryColor,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            icon: SvgPicture.asset(
              "assets/icons/User Icon.svg",
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

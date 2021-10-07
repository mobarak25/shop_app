import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/components/profile_menu.dart';
import 'package:shop_app/screens/profile/components/profile_picture.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> profileMenus = [
      {
        "title": "Home",
        "icon": "assets/icons/Star Icon.svg",
        "link": HomeScreen.routeName,
      },
      {
        "title": "My Account",
        "icon": "assets/icons/User Icon.svg",
        "link": CartScreen.routeName,
      },
      {
        "title": "Notifications",
        "icon": "assets/icons/Bell.svg",
        "link": CartScreen.routeName,
      },
      {
        "title": "Settings",
        "icon": "assets/icons/Settings.svg",
        "link": CartScreen.routeName,
      },
      {
        "title": "Help Center",
        "icon": "assets/icons/Question mark.svg",
        "link": CartScreen.routeName,
      },
      {
        "title": "Log Out",
        "icon": "assets/icons/Log out.svg",
        "link": CartScreen.routeName,
      },
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            ProfilePicture(),
            SizedBox(height: getProportionateScreenWidth(40)),
            ...List.generate(
              profileMenus.length,
              (index) => ProfileMenu(
                title: profileMenus[index]["title"],
                icon: profileMenus[index]["icon"],
                press: () {
                  Navigator.pushNamed(context, profileMenus[index]["link"]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

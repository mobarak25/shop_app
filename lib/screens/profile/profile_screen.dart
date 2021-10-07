import 'package:flutter/material.dart';
import 'package:shop_app/components/site_bottom_navigation_bar.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enums.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: SiteBottomNavigationBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kTextColor,
        ),
      ),
      title: Text(
        "Profile",
        style: TextStyle(fontSize: 18),
      ),
      centerTitle: true,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/components/site_bottom_navigation_bar.dart';
import 'package:shop_app/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: SiteBottomNavigationBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}

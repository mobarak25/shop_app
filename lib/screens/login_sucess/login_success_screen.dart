import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_sucess/components/body.dart';

class LoginSucessScreen extends StatelessWidget {
  static String routeName = "/login_sucess";

  const LoginSucessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.loginBg,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ListView(
              children: [],
            ),
            Positioned(
              left: -100,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/login_bg.png'))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

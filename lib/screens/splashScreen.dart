import 'package:e_library_mobile/screens/homeScreen.dart';
import 'package:e_library_mobile/screens/mainScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreenView(
            navigateRoute: LoginScreen(),
            duration: 3000,
            imageSize: 200,
            pageRouteTransition: PageRouteTransition.CupertinoPageRoute,
            textStyle: GoogleFonts.adventPro(
              fontSize: textThemeData(context).textTheme.headline4!.fontSize,
            ),
            text: "UBB E-Library Mobile",
            imageSrc: "assets/images/logo.png",
            backgroundColor: ColorTheme.bg),
      ],
    );
  }
}

import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.bg,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorTheme.appBar, //transparent color
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            )
          ],
          leading: IconButton(
            splashColor: ColorTheme.splashColor,
            highlightColor: ColorTheme.highLightColor,
            icon: Icon(
              IconDataTheme.leading,
              color: ColorTheme.leading,
            ),
            onPressed: () {},
          )),
    );
  }
}

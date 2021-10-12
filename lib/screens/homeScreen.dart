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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: ColorTheme.appBar,
              actions: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconDataTheme.notification,
                            color: ColorTheme.black,
                          )),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () {
                      print('fsdf');
                    },
                    child: buildProfileCircle()),
                SizedBox(
                  width: 10,
                )
              ],
              leading: IconButton(
                splashColor: ColorTheme.splashColor,
                highlightColor: ColorTheme.highLightColor,
                icon: Icon(
                  IconDataTheme.sort,
                  color: ColorTheme.black,
                ),
                onPressed: () {},
              )),
          SliverPadding(
            padding: EdgeInsets.only(top: 170),
            sliver: SliverToBoxAdapter(
              child: Container(
                constraints: BoxConstraints(minHeight: 15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/wood.png'))),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildProfileCircle() {
    return Container(
      width: SizeData.profileCircle,
      height: SizeData.profileCircle,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/profile.jpg'))),
    );
  }
}

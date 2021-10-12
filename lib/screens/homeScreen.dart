import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SafeArea(
        child: CustomScrollView(
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
              ],
              // leading: IconButton(
              //   splashColor: ColorTheme.splashColor,
              //   highlightColor: ColorTheme.highLightColor,
              //   icon: Icon(
              //     IconDataTheme.sort,
              //     color: ColorTheme.black,
              //   ),
              //   onPressed: () {},
              // )
              leading: buildProfileCircle(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'new book'.toUpperCase(),
                    style: GoogleFonts.adventPro(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/shelf.png'))),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/book1.jpg'))),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 150,
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/book2.jpg'))),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 30,
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/book3.jpg'))),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 70,
              ),
            ),
            SliverFillRemaining(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildProfileCircle() {
    return UnconstrainedBox(
      child: Container(
        width: SizeData.profileCircle,
        height: SizeData.profileCircle,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/profile.jpg'))),
      ),
    );
  }
}

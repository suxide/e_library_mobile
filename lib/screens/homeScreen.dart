import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.bg,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            buildSliverAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(left: 15, top: 20),
              sliver: SliverToBoxAdapter(
                child: Text('New and Trending',
                    style: GoogleFonts.bebasNeue(
                        fontSize: textThemeData(context)
                            .textTheme
                            .headline3!
                            .fontSize)),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/wood_shelf.png'))),
                  ),
                  Positioned(
                    bottom: 60,
                    child: Container(
                      height: 180,
                      width: size.width,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                print('hello');
                              },
                              child: Container(
                                width: 125,
                                color: Colors.orange,
                              ),
                            ),
                          );
                        },
                        itemCount: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      backgroundColor: ColorTheme.appBar,
      leading: IconButton(
        splashColor: ColorTheme.splashColor,
        highlightColor: ColorTheme.highLightColor,
        icon: Icon(
          IconDataTheme.user,
          color: ColorTheme.black,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            splashColor: ColorTheme.splashColor,
            highlightColor: ColorTheme.highLightColor,
            onPressed: () {},
            icon: Icon(
              IconDataTheme.search,
              color: ColorTheme.black,
            ))
      ],
    );
  }
}

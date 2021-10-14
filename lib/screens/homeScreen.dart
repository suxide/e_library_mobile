import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

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
          physics: BouncingScrollPhysics(),
          slivers: [
            buildSliverAppBar(),
            SliverPadding(
              padding: EdgeInsets.only(left: 15, top: 20),
              sliver: SliverToBoxAdapter(
                child: Text('New and Trending',
                    style: GoogleFonts.bebasNeue(
                        color: ColorTheme.title,
                        fontSize: textThemeData(context)
                            .textTheme
                            .headline3!
                            .fontSize)),
              ),
            ),
            buildHeight(30),
            buildBookShelf(size),
            buildHeight(100),
            // SliverFillRemaining(
            //   child: Column(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           decoration: BoxDecoration(
            //               color: ColorTheme.white,
            //               borderRadius: BorderRadius.only(
            //                   topLeft:
            //                       Radius.circular(SizeData.audioBookRadius),
            //                   topRight:
            //                       Radius.circular(SizeData.audioBookRadius))),
            //           // child: Column(
            //           //   crossAxisAlignment: CrossAxisAlignment.start,
            //           //   children: [
            //           //     Padding(
            //           //       padding: const EdgeInsets.all(20),
            //           //       child: Row(
            //           //         children: [
            //           //           Text(
            //           //             'Audio Book',
            //           //             style: GoogleFonts.adamina(
            //           //                 color: ColorTheme.title,
            //           //                 fontSize: textThemeData(context)
            //           //                     .textTheme
            //           //                     .headline6!
            //           //                     .fontSize),
            //           //           ),
            //           //           SizedBox(
            //           //             width: 10,
            //           //           ),
            //           //           Icon(
            //           //             FlutterRemix.headphone_fill,
            //           //             color: ColorTheme.title,
            //           //           )
            //           //         ],
            //           //       ),
            //           //     ),
            //           //   ],
            //           // ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
            SliverFillRemaining()
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter buildBookShelf(Size size) {
    return SliverToBoxAdapter(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 200,
            child: Container(
              height: 60,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/wood_shelf.png'))),
            ),
          ),
          buildListViewTrendingBook(size),
        ],
      ),
    );
  }

  SliverToBoxAdapter buildHeight(double height) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: height,
      ),
    );
  }

  Container buildListViewTrendingBook(Size size) {
    return Container(
      height: 200,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                print(index);
              },
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(books[index].pathImg))),
              ),
            ),
          );
        },
        itemCount: books.length,
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
        InkWell(
          splashColor: ColorTheme.splashColor,
          highlightColor: ColorTheme.highLightColor,
          onTap: () {},
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/screens/loginScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khmer_fonts/khmer_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _starVal = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.bg,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            buildSliverAppBar(size),
            SliverPadding(
              padding: EdgeInsets.only(left: 15, top: 10),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'សៀវភៅថ្មីៗ',
                  style: TextStyle(
                    fontFamily: KhmerFonts.koulen,
                    color: ColorTheme.title,
                    fontSize:
                        textThemeData(context).textTheme.headline2!.fontSize,
                    package: 'khmer_fonts',
                  ),
                ),
              ),
            ),
            buildHeight(10),
            buildBookShelf(size),
            buildHeight(100),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'ប្រភេទសៀវភៅ',
                      style: TextStyle(
                        fontFamily: KhmerFonts.koulen,
                        color: ColorTheme.title,
                        fontSize: textThemeData(context)
                            .textTheme
                            .headline5!
                            .fontSize,
                        package: 'khmer_fonts',
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: 15,
                          ),
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: ColorTheme.title),
                        );
                      },
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
            buildHeight(30),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'អ្នកនិពន្ធ',
                      style: TextStyle(
                        fontFamily: KhmerFonts.koulen,
                        color: ColorTheme.title,
                        fontSize: textThemeData(context)
                            .textTheme
                            .headline5!
                            .fontSize,
                        package: 'khmer_fonts',
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: 15,
                          ),
                          width: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: ColorTheme.title),
                        );
                      },
                      itemCount: 10,
                    ),
                  )
                ],
              ),
            ),
            buildHeight(30),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  decoration: BoxDecoration(
                      color: ColorTheme.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SizeData.audioBookRadius),
                          topRight: Radius.circular(SizeData.audioBookRadius))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 30, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'សៀវភៅជាសម្លេង',
                                style: TextStyle(
                                  fontFamily: KhmerFonts.kantumruy,
                                  color: ColorTheme.title,
                                  fontSize: textThemeData(context)
                                      .textTheme
                                      .headline5!
                                      .fontSize,
                                  package: 'khmer_fonts',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                IconDataTheme.headphone,
                                color: ColorTheme.title,
                              )
                            ],
                          ),
                        ),
                        ...List.generate(
                            audioBooks.length,
                            (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 75,
                                        width: 75,
                                        margin: EdgeInsets.only(left: 20),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    audioBooks[index].imgPath)),
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 20,
                                                  offset: Offset(10, 8),
                                                  spreadRadius: 3),
                                              BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 20,
                                                  offset: Offset(-3, -4),
                                                  spreadRadius: -2)
                                            ]),
                                        child: UnconstrainedBox(
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.black87
                                                    .withOpacity(0.5),
                                                shape: BoxShape.circle),
                                            child: UnconstrainedBox(
                                              child: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    color: ColorTheme.white,
                                                    shape: BoxShape.circle),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            audioBooks[index].title,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: KhmerFonts.dangrek,
                                              color: ColorTheme.title,
                                              fontSize: textThemeData(context)
                                                  .textTheme
                                                  .headline6!
                                                  .fontSize,
                                              package: 'khmer_fonts',
                                            ),
                                          ),
                                          Text(
                                            'អ្នកនិពន្ធ: លោក លីវ៉ាត់',
                                            style: TextStyle(
                                              fontFamily: KhmerFonts.hanuman,
                                              color: ColorTheme.title,
                                              fontSize: textThemeData(context)
                                                  .textTheme
                                                  .headline6!
                                                  .fontSize,
                                              package: 'khmer_fonts',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          RatingStars(
                                            starColor: ColorTheme.bottomBar,
                                            valueLabelColor: ColorTheme.title,
                                            maxValueVisibility: true,
                                            valueLabelVisibility: true,
                                            value: _starVal,
                                            onValueChanged: (val) {
                                              setState(() {
                                                _starVal = val;
                                              });
                                            },
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                        SizedBox(
                          height: 50,
                        )
                      ]),
                ),
              ]),
            ),
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

  SliverAppBar buildSliverAppBar(Size size) {
    return SliverAppBar(
      backgroundColor: ColorTheme.appBar,
      expandedHeight: 120,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            UnconstrainedBox(
              child: Container(
                width: 45,
                height: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/logo.png'))),
              ),
            ),
          ],
        ),
      ),
      // expandedHeight: 200,
      // flexibleSpace: FlexibleSpaceBar(
      //   background: Column(
      //     children: [
      //       Container(
      //         child: Container(
      //           width: 70,
      //           height: 70,
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   fit: BoxFit.contain,
      //                   image: AssetImage('assets/images/logo.png'))),
      //         ),
      //       ),
      //       Text(
      //         'E-library',
      //         style: TextStyle(fontSize: 70),
      //       ),
      //     ],
      //   ),
      // ),
      leading: IconButton(
        splashColor: ColorTheme.splashColor,
        highlightColor: ColorTheme.highLightColor,
        icon: Icon(
          IconDataTheme.user,
          color: ColorTheme.title,
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
      ),
      actions: [
        IconButton(
            splashColor: ColorTheme.splashColor,
            highlightColor: ColorTheme.highLightColor,
            onPressed: () {},
            icon: Icon(
              IconDataTheme.search,
              color: ColorTheme.title,
            )),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

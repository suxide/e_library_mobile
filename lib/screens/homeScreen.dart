import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/screens/bookDetailScreen.dart';
import 'package:e_library_mobile/screens/loginScreen.dart';
import 'package:e_library_mobile/screens/splashScreen.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:khmer_fonts/khmer_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _starVal = 0;
  String _title = 'jflskdjflksdjflksdjfkjsdkfjsdfjksdjfkldsf';
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
              padding: EdgeInsets.only(left: 15, top: 0),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'សៀវភៅថ្មីៗ',
                      style: TextStyle(
                        fontFamily: KhmerFonts.koulen,
                        color: ColorTheme.title,
                        fontSize: textThemeData(context)
                            .textTheme
                            .headline3!
                            .fontSize,
                        package: 'khmer_fonts',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            buildSliverHeight(10),
            buildBookShelf(size),
            buildSliverHeight(100),
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
                  //Category
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Container(
                      height: 60,
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                              left: 15,
                            ),
                            constraints: BoxConstraints(minWidth: 150),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: ColorTheme.title),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    bookCategory[index].icon,
                                    color: ColorTheme.bg,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    bookCategory[index].name,
                                    style: TextStyle(
                                      fontFamily: KhmerFonts.siemreap,
                                      color: ColorTheme.white,
                                      fontSize: textThemeData(context)
                                          .textTheme
                                          .headline6!
                                          .fontSize,
                                      package: 'khmer_fonts',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: bookCategory.length,
                      ),
                    ),
                  )
                ],
              ),
            ),
            buildSliverHeight(30),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'អ្នកនិពន្ធមានប្រជាប្រិយភាព',
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
                  //Author
                  Container(
                    height: 180,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 10),
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 10, right: 5, bottom: 10),
                            width: 270,
                            decoration: BoxDecoration(
                                color: ColorTheme.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: ColorTheme.title.withOpacity(0.4),
                                      blurRadius: 7,
                                      offset: Offset(5, 7),
                                      spreadRadius: 2),
                                ]),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Stack(
                                    children: [
                                      Container(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      bookAuthors[index]
                                                          .imgPath))),
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                  color: index == 0
                                                      ? ColorTheme.title
                                                      : ColorTheme.bg),
                                              child: Icon(
                                                index == 0
                                                    ? IconDataTheme.bookmarkSave
                                                    : IconDataTheme
                                                        .bookmarkUnSave,
                                                color: index == 0
                                                    ? ColorTheme.bottomBar
                                                    : ColorTheme.title,
                                              )))
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          bookAuthors[index].name,
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.koulen,
                                            color: ColorTheme.black,
                                            fontSize: textThemeData(context)
                                                .textTheme
                                                .headline6!
                                                .fontSize,
                                            package: 'khmer_fonts',
                                          ),
                                        ),
                                        Text(
                                          'ថ្ងៃ ខែ ឆ្នាំ កំណើត: ០១ មករា ១៩៨៧',
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.kantumruy,
                                            color: ColorTheme.title,
                                            fontSize: 13,
                                            package: 'khmer_fonts',
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          'ខ្ញុំបាទឈ្មោះ ${bookAuthors[index].name} សព្វថ្ងៃនេះខ្ញុំមានអាយុ ១០០ ឆ្នាំ',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.content,
                                            color: ColorTheme.title,
                                            fontSize: 13,
                                            package: 'khmer_fonts',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: bookAuthors.length,
                    ),
                  )
                ],
              ),
            ),
            buildSliverHeight(20),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ColorTheme.title.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(5, 10),
                            spreadRadius: 1),
                      ],
                      color: ColorTheme.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(SizeData.audioBookRadius),
                          bottomLeft:
                              Radius.circular(SizeData.audioBookRadius))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Row(
                          children: [
                            Text(
                              'សៀវភៅជាអក្សរ',
                              style: TextStyle(
                                fontFamily: KhmerFonts.kantumruy,
                                color: ColorTheme.title,
                                fontSize: textThemeData(context)
                                    .textTheme
                                    .headline6!
                                    .fontSize,
                                package: 'khmer_fonts',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(FlutterRemix.book_2_fill)
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          audioBooks[index].imgPath))),
                            );
                          },
                          itemCount: audioBooks.length,
                        ),
                      ),
                      //Popular book
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          children: [
                            Text(
                              'សៀវភៅជាអក្សរដែលមានប្រជាប្រិយភាព',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: KhmerFonts.kantumruy,
                                color: ColorTheme.title,
                                fontSize: textThemeData(context)
                                    .textTheme
                                    .headline6!
                                    .fontSize,
                                package: 'khmer_fonts',
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(FlutterRemix.book_2_fill)
                          ],
                        ),
                      ),
                      Container(
                        height: 170,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              width: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(books[index].pathImg))),
                            );
                          },
                          itemCount: audioBooks.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buildSliverHeight(30),
            //Audio book
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
                        //new popular audio book
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 30, bottom: 15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Text(
                                      'សៀវភៅជាសម្លេងថ្មីៗ',
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
                                  ],
                                ),
                              ),
                              Icon(
                                IconDataTheme.headphone,
                                color: ColorTheme.title,
                              ),
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

                        //popular audio book
                        Container(
                          height: 100,
                          color: Colors.red,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'សៀវភៅជាសម្លេងដែលមានប្រជាប្រិយភាព',
                                  style: TextStyle(fontSize: 30),
                                ),
                              ),
                              Expanded(child: Icon(IconDataTheme.headphone))
                            ],
                          ),
                        ),
                        // Icon(
                        //           IconDataTheme.headphone,
                        //           color: ColorTheme.title,
                        //         )
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
                                                    books[index].pathImg)),
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

  SliverToBoxAdapter buildSliverHeight(double height) {
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
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => BookDetailScreen(
                              index: index,
                            )));
              },
              child: Container(
                width: 140,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: ColorTheme.title.withOpacity(0.5),
                          blurRadius: 10,
                          offset: Offset(7, 10),
                          spreadRadius: 2),
                    ],
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
      expandedHeight: 100,
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
              context, MaterialPageRoute(builder: (context) => SplashScreen()));
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

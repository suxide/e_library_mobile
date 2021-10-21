import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khmer_fonts/khmer_fonts.dart';

class BookDetailScreen extends StatefulWidget {
  final int index;
  const BookDetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.title,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                delegate: AppBarDelegate(
                    max: 70,
                    min: 70,
                    child: Container(
                      height: 70,
                      color: ColorTheme.title,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  highlightColor: ColorTheme.highLightColor,
                                  splashColor: ColorTheme.splashColor,
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            width: 2,
                                            color: ColorTheme.bg
                                                .withOpacity(0.5))),
                                    child: Center(
                                      child: Icon(
                                        FlutterRemix.arrow_left_s_line,
                                        color: ColorTheme.bg.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  highlightColor: ColorTheme.highLightColor,
                                  splashColor: ColorTheme.splashColor,
                                  onTap: () {},
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        border: Border.all(
                                            width: 2,
                                            color: ColorTheme.bg
                                                .withOpacity(0.5))),
                                    child: Center(
                                      child: Icon(
                                        IconDataTheme.bookmarkUnSave,
                                        color: ColorTheme.bg.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  constraints: BoxConstraints(minHeight: 200),
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    height: 190,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black87
                                                  .withOpacity(0.7),
                                              blurRadius: 7,
                                              offset: Offset(5, 7),
                                              spreadRadius: 2),
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                books[widget.index].pathImg))),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  UnconstrainedBox(
                                    child: Row(
                                      children: [
                                        IconButton(
                                            splashColor: ColorTheme.splashColor,
                                            highlightColor:
                                                ColorTheme.highLightColor,
                                            onPressed: () {},
                                            icon: Icon(
                                              IconDataTheme.unFavorite,
                                              color: ColorTheme.bg,
                                            )),
                                        IconButton(
                                            splashColor: ColorTheme.splashColor,
                                            highlightColor:
                                                ColorTheme.highLightColor,
                                            onPressed: () {},
                                            icon: Icon(
                                              IconDataTheme.share,
                                              color: ColorTheme.bg,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ខ្ញុំស្រឡាញ់ប្រទេសរបស់ខ្ញុំ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: KhmerFonts.kdamThmor,
                                        color: ColorTheme.bg,
                                        fontSize: 23,
                                        package: 'khmer_fonts',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          IconDataTheme.star,
                                          color: ColorTheme.bg,
                                          size: 25,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '៤.៥',
                                          style: TextStyle(
                                              fontFamily: KhmerFonts.kantumruy,
                                              color: ColorTheme.bg,
                                              fontSize: 17,
                                              package: 'khmer_fonts',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'ពិន្ទុ',
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.kantumruy,
                                            color: ColorTheme.bg,
                                            fontSize: 17,
                                            package: 'khmer_fonts',
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            bookAuthors[widget.index].name,
                                            style: TextStyle(
                                              fontFamily: KhmerFonts.kantumruy,
                                              color: ColorTheme.bg,
                                              fontSize: 20,
                                              package: 'khmer_fonts',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'ការខ្ចី:',
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.kantumruy,
                                            color: ColorTheme.bg,
                                            fontSize: 17,
                                            package: 'khmer_fonts',
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'មិនទាន់បានខ្ចី',
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.kantumruy,
                                            color: ColorTheme.bg,
                                            fontSize: 17,
                                            package: 'khmer_fonts',
                                          ),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            overlayColor: MaterialStateProperty
                                                .resolveWith((states) =>
                                                    ColorTheme.title
                                                        .withOpacity(0.3)),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .resolveWith((states) =>
                                                        ColorTheme.bg)),
                                        onPressed: () {},
                                        child: Text(
                                          'ស្នើសុំការខ្ចី',
                                          style: TextStyle(
                                            fontFamily: KhmerFonts.kantumruy,
                                            color: ColorTheme.title,
                                            fontSize: 15,
                                            package: 'khmer_fonts',
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  margin: EdgeInsets.only(right: 20, left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: ColorTheme.bg),
                      boxShadow: [
                        BoxShadow(
                            color: ColorTheme.black.withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(5, 10),
                            spreadRadius: 1),
                      ],
                      color: ColorTheme.title,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ទំព័រ',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  FlutterRemix.book_read_line,
                                  color: ColorTheme.bg,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '៦០',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ទំព័រ',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 17,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: ColorTheme.bg,
                        thickness: 2,
                        indent: 7,
                        endIndent: 7,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ភាសា',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                                Icon(
                                  FlutterRemix.flag_line,
                                  color: ColorTheme.bg,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ខ្មែរ/អង់គ្លេស',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: ColorTheme.bg,
                        thickness: 2,
                        endIndent: 7,
                        indent: 7,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ចំនួន',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  FlutterRemix.stack_line,
                                  color: ColorTheme.bg,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '២០',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'ក្បាល',
                                  style: TextStyle(
                                    fontFamily: KhmerFonts.kantumruy,
                                    color: ColorTheme.bg,
                                    fontSize: 17,
                                    package: 'khmer_fonts',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Text(
                        'ប្រភេទសៀវភៅ',
                        style: TextStyle(
                          fontFamily: KhmerFonts.kantumruy,
                          color: ColorTheme.bg,
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
                      Icon(
                        FlutterRemix.book_3_line,
                        color: ColorTheme.bg,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 15, bottom: 15),
                        constraints: BoxConstraints(minWidth: 150),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87.withOpacity(0.3),
                                  blurRadius: 7,
                                  offset: Offset(5, 7),
                                  spreadRadius: 2),
                            ],
                            borderRadius: BorderRadius.circular(14),
                            color: ColorTheme.bg),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                bookCategory[index].icon,
                                color: ColorTheme.title,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                bookCategory[index].name,
                                style: TextStyle(
                                  fontFamily: KhmerFonts.siemreap,
                                  color: ColorTheme.title,
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
                    itemCount: 3,
                  ),
                )
              ]),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 70,
            )),
            SliverToBoxAdapter(
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                    color: ColorTheme.bg,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SizeData.audioBookRadius),
                        topRight: Radius.circular(SizeData.audioBookRadius))),
                child: Column(
                  children: [Text('fsdfsdf')],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double max, min;
  AppBarDelegate({required this.child, required this.min, required this.max});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

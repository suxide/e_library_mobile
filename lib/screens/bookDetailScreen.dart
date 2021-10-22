import 'dart:ui';

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
      backgroundColor: ColorTheme.bg,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 300,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                        image: AssetImage(books[widget.index].pathImg))),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
              ),
            ),
            // SliverAppBar(
            //   backgroundColor: Colors.transparent,
            //   leading: IconButton(
            //     splashColor: ColorTheme.splashColor,
            //     highlightColor: ColorTheme.highLightColor,
            //     icon: Icon(
            //       FlutterRemix.arrow_left_s_line,
            //       color: ColorTheme.title,
            //     ),
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //   ),
            //   centerTitle: true,
            //   title: Text(
            //     'ពត៌មានលម្អិត',
            //     style: TextStyle(
            //       fontFamily: KhmerFonts.kantumruy,
            //       color: ColorTheme.title,
            //       fontSize: 17,
            //       package: 'khmer_fonts',
            //     ),
            //   ),
            //   actions: [
            //     IconButton(
            //         splashColor: ColorTheme.splashColor,
            //         highlightColor: ColorTheme.highLightColor,
            //         onPressed: () {},
            //         icon: Icon(
            //           IconDataTheme.bookmarkUnSave,
            //           color: ColorTheme.title,
            //         ))
            //   ],
            // ),

            // SliverToBoxAdapter(
            //   child: Stack(
            //     children: [
            //       Container(
            //         height: 300,
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 colorFilter: ColorFilter.mode(
            //                     Colors.grey.shade400, BlendMode.darken),
            //                 alignment: Alignment.topCenter,
            //                 fit: BoxFit.cover,
            //                 image: AssetImage(books[widget.index].pathImg))),
            //       ),
            //       BackdropFilter(
            //           filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            //           child: Container()),
            //       // buildSliverAppBar(context),
            //       Container(
            //         height: 60,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             IconButton(
            //                 onPressed: () {},
            //                 icon: Icon(
            //                   Icons.chevron_left,
            //                   size: 30,
            //                   color: Colors.white,
            //                 )),
            //             IconButton(
            //                 onPressed: () {},
            //                 icon: Icon(
            //                   Icons.bookmark,
            //                   color: Colors.white,
            //                 ))
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // SliverList(
            //   delegate: SliverChildListDelegate([
            //     Container(
            //       color: Colors.red,
            //       child: Padding(
            //         padding: const EdgeInsets.only(
            //           left: 20,
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Container(
            //                   height: 180,
            //                   width: 130,
            //                   decoration: BoxDecoration(
            //                       // boxShadow: [
            //                       //   BoxShadow(
            //                       //       color:
            //                       //           ColorTheme.title.withOpacity(0.4),
            //                       //       blurRadius: 5,
            //                       //       offset: Offset(7, 10),
            //                       //       spreadRadius: 2),
            //                       // ],
            //                       image: DecorationImage(
            //                           fit: BoxFit.fill,
            //                           image: AssetImage(
            //                               books[widget.index].pathImg))),
            //                 ),
            //               ],
            //             ),
            //             SizedBox(
            //               height: 5,
            //             ),
            //             // UnconstrainedBox(
            //             //   child: Row(
            //             //     children: [
            //             //       IconButton(
            //             //           splashColor: ColorTheme.splashColor,
            //             //           highlightColor: ColorTheme.highLightColor,
            //             //           onPressed: () {},
            //             //           icon: Icon(
            //             //             IconDataTheme.unFavorite,
            //             //             color: ColorTheme.title,
            //             //           )),
            //             //       IconButton(
            //             //           splashColor: ColorTheme.splashColor,
            //             //           highlightColor: ColorTheme.highLightColor,
            //             //           onPressed: () {},
            //             //           icon: Icon(
            //             //             IconDataTheme.share,
            //             //             color: ColorTheme.title,
            //             //           ))
            //             //     ],
            //             //   ),
            //             // ),
            //           ],
            //         ),
            //       ),
            //     ),

            //     // Container(
            //     //   height: 70,
            //     //   margin: EdgeInsets.only(right: 20, left: 20),
            //     //   decoration: BoxDecoration(
            //     //       border: Border.all(width: 2, color: ColorTheme.bg),
            //     //       boxShadow: [
            //     //         BoxShadow(
            //     //             color: ColorTheme.black.withOpacity(0.3),
            //     //             blurRadius: 10,
            //     //             offset: Offset(5, 10),
            //     //             spreadRadius: 1),
            //     //       ],
            //     //       color: ColorTheme.title,
            //     //       borderRadius: BorderRadius.circular(10)),
            //     //   child: Row(
            //     //     children: [
            //     //       Expanded(
            //     //         child: Column(
            //     //           mainAxisAlignment: MainAxisAlignment.center,
            //     //           children: [
            //     //             Row(
            //     //               mainAxisAlignment: MainAxisAlignment.center,
            //     //               children: [
            //     //                 Text(
            //     //                   'ទំព័រ',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 18,
            //     //                     fontWeight: FontWeight.bold,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //                 SizedBox(
            //     //                   width: 5,
            //     //                 ),
            //     //                 Icon(
            //     //                   FlutterRemix.book_read_line,
            //     //                   color: ColorTheme.bg,
            //     //                 )
            //     //               ],
            //     //             ),
            //     //             Row(
            //     //               mainAxisAlignment: MainAxisAlignment.center,
            //     //               children: [
            //     //                 Text(
            //     //                   '៦០',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 17,
            //     //                     fontWeight: FontWeight.bold,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //                 SizedBox(
            //     //                   width: 5,
            //     //                 ),
            //     //                 Text(
            //     //                   'ទំព័រ',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 17,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //               ],
            //     //             ),
            //     //           ],
            //     //         ),
            //     //       ),
            //     //       VerticalDivider(
            //     //         color: ColorTheme.bg,
            //     //         thickness: 2,
            //     //         indent: 7,
            //     //         endIndent: 7,
            //     //       ),
            //     //       Expanded(
            //     //         child: Column(
            //     //           mainAxisAlignment: MainAxisAlignment.center,
            //     //           children: [
            //     //             Row(
            //     //               mainAxisAlignment: MainAxisAlignment.center,
            //     //               children: [
            //     //                 Text(
            //     //                   'ភាសា',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontWeight: FontWeight.bold,
            //     //                     fontSize: 17,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //                 Icon(
            //     //                   FlutterRemix.flag_line,
            //     //                   color: ColorTheme.bg,
            //     //                 )
            //     //               ],
            //     //             ),
            //     //             Row(
            //     //               mainAxisAlignment: MainAxisAlignment.center,
            //     //               children: [
            //     //                 Text(
            //     //                   'ខ្មែរ/អង់គ្លេស',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 17,
            //     //                     fontWeight: FontWeight.bold,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //               ],
            //     //             ),
            //     //           ],
            //     //         ),
            //     //       ),
            //     //       VerticalDivider(
            //     //         color: ColorTheme.bg,
            //     //         thickness: 2,
            //     //         endIndent: 7,
            //     //         indent: 7,
            //     //       ),
            //     //       Expanded(
            //     //         child: Column(
            //     //           mainAxisAlignment: MainAxisAlignment.center,
            //     //           children: [
            //     //             Row(
            //     //               mainAxisAlignment: MainAxisAlignment.center,
            //     //               children: [
            //     //                 Text(
            //     //                   'ចំនួន',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 17,
            //     //                     fontWeight: FontWeight.bold,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //                 SizedBox(
            //     //                   width: 5,
            //     //                 ),
            //     //                 Icon(
            //     //                   FlutterRemix.stack_line,
            //     //                   color: ColorTheme.bg,
            //     //                 )
            //     //               ],
            //     //             ),
            //     //             Row(
            //     //               mainAxisAlignment: MainAxisAlignment.center,
            //     //               children: [
            //     //                 Text(
            //     //                   '២០',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 17,
            //     //                     fontWeight: FontWeight.bold,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //                 SizedBox(
            //     //                   width: 5,
            //     //                 ),
            //     //                 Text(
            //     //                   'ក្បាល',
            //     //                   style: TextStyle(
            //     //                     fontFamily: KhmerFonts.kantumruy,
            //     //                     color: ColorTheme.bg,
            //     //                     fontSize: 17,
            //     //                     package: 'khmer_fonts',
            //     //                   ),
            //     //                 ),
            //     //               ],
            //     //             )
            //     //           ],
            //     //         ),
            //     //       ),
            //     //     ],
            //     //   ),
            //     // ),
            //   ]),
            // ),

            SliverToBoxAdapter(
                child: SizedBox(
              height: 70,
            )),
          ],
        ),
      ),
    );
  }

  SliverPersistentHeader buildSliverAppBar(BuildContext context) {
    return SliverPersistentHeader(
        delegate: AppBarDelegate(
            max: 60,
            min: 60,
            child: Container(
              color: Colors.transparent,
              height: 60,
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
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    width: 2,
                                    color: ColorTheme.title.withOpacity(0.7))),
                            child: Center(
                              child: Icon(
                                FlutterRemix.arrow_left_s_line,
                                color: ColorTheme.title,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                    width: 2,
                                    color: ColorTheme.title.withOpacity(0.7))),
                            child: Center(
                              child: Icon(
                                FlutterRemix.arrow_left_s_line,
                                color: ColorTheme.title,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
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

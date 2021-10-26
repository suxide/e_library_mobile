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
                title: Text('BookDetails'),
                centerTitle: true,
                flexibleSpace: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(books[widget.index].pathImg))),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(),
                    ),
                  ),
                ])),
            SliverFillRemaining(
              child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Container(
                        height: 400,
                        color: Colors.yellow,
                      )
                    ],
                  )),
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

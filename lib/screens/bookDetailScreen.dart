import 'dart:ui';
import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
              leading: IconButton(
                icon: Icon(CupertinoIcons.back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: Colors.transparent,
              expandedHeight: 300,
              centerTitle: true,
              flexibleSpace: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(books[widget.index].pathImg))),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                )
              ]),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                decoration: BoxDecoration(
                    color: ColorTheme.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SizeData.audioBookRadius),
                        topRight: Radius.circular(SizeData.audioBookRadius))),
                // child: Column(
                //   children: [
                //     Stack(
                //       clipBehavior: Clip.none,
                //       alignment: Alignment.center,
                //       children: [
                //         Container(),
                //         Positioned(
                //           top: -160,
                //           child: Container(
                //             height: 200,
                //             width: 140,
                //             decoration: BoxDecoration(
                //                 image: DecorationImage(
                //                     fit: BoxFit.fill,
                //                     image: AssetImage(
                //                         books[widget.index].pathImg))),
                //           ),
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       height: 70,
                //     ),
                //     Container(
                //       child: Text(audioBooks[widget.index].title),
                //     )
                //   ],
                // ),
              ),
            ])),
            SliverFillRemaining()
          ],
        ),
      ),
    );
  }
}

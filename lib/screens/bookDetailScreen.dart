import 'package:e_library_mobile/dataDemo.dart';
import 'package:e_library_mobile/responsive.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:khmer_fonts/khmer_fonts.dart';

class BookDetailScreen extends StatefulWidget {
  final int index;
  const BookDetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  _BookDetailScreenState createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  ValueNotifier<bool> _isFinishReadingVal = ValueNotifier(false);
  ValueNotifier<bool> _isClickingBookmarkVal = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.bg,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            ValueListenableBuilder(
              builder: (BuildContext context, bool _isClickingBookmark,
                  Widget? child) {
                return SliverAppBar(
                  backgroundColor: ColorTheme.bg,
                  leading: IconButton(
                    splashColor: ColorTheme.splashColor,
                    highlightColor: ColorTheme.highLightColor,
                    icon: Icon(
                      FlutterRemix.arrow_left_s_line,
                      color: ColorTheme.title,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: [
                    IconButton(
                        splashColor: ColorTheme.splashColor,
                        highlightColor: ColorTheme.highLightColor,
                        onPressed: () {
                          _isClickingBookmarkVal.value =
                              !_isClickingBookmarkVal.value;
                        },
                        icon: Icon(
                          _isClickingBookmark
                              ? IconDataTheme.bookmarkSave
                              : IconDataTheme.bookmarkUnSave,
                          color: _isClickingBookmark
                              ? ColorTheme.bottomBar
                              : ColorTheme.title,
                        )),
                    IconButton(
                        splashColor: ColorTheme.splashColor,
                        highlightColor: ColorTheme.highLightColor,
                        onPressed: () {},
                        icon: Icon(
                          IconDataTheme.download,
                          color: ColorTheme.title,
                        )),
                  ],
                );
              },
              valueListenable: _isClickingBookmarkVal,
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 235,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Container(
                        height: 230,
                        width: 150,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: ColorTheme.title.withOpacity(0.4),
                                  blurRadius: 10,
                                  offset: Offset(7, 5),
                                  spreadRadius: 2),
                            ],
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage(books[widget.index].pathImg))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: ValueListenableBuilder(
                        builder: (BuildContext context, bool _isFinishReading,
                            Widget? child) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                audioBooks[widget.index].title,
                                style: TextStyle(
                                  fontFamily: KhmerFonts.bayon,
                                  color: ColorTheme.title,
                                  fontSize: textThemeData(context)
                                      .textTheme
                                      .headline5!
                                      .fontSize,
                                  package: 'khmer_fonts',
                                ),
                              ),
                              Text(
                                'និពន្ធដោយ៖ ម៉ាន ម៉ាលីវ៉ាត់',
                                style: TextStyle(
                                  fontFamily: KhmerFonts.content,
                                  color: ColorTheme.title,
                                  fontSize: 15,
                                  package: 'khmer_fonts',
                                ),
                              ),
                              Text(
                                'និពន្ធឆ្នាំ៖ ២០២១',
                                style: TextStyle(
                                  fontFamily: KhmerFonts.content,
                                  color: ColorTheme.title,
                                  fontSize: 15,
                                  package: 'khmer_fonts',
                                ),
                              ),
                              Spacer(),
                              Text(
                                _isFinishReading
                                    ? 'status: អានរួចរាល់'.toUpperCase()
                                    : 'status: កំពុងអាន'.toUpperCase(),
                                style: TextStyle(
                                  fontFamily: KhmerFonts.content,
                                  fontWeight: FontWeight.bold,
                                  color: ColorTheme.title,
                                  fontSize: 17,
                                  package: 'khmer_fonts',
                                ),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.resolveWith(
                                              (states) =>
                                                  ColorTheme.bottomBar)),
                                  onPressed: () {
                                    _isFinishReadingVal.value =
                                        !_isFinishReadingVal.value;
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 20, right: 20),
                                    child: Text(
                                      _isFinishReading
                                          ? 'មិនទាន់រួចរាល់'
                                          : 'អានរួចរាល់',
                                      style: TextStyle(
                                        fontFamily: KhmerFonts.kantumruy,
                                        fontWeight: FontWeight.bold,
                                        color: ColorTheme.title,
                                        fontSize: 20,
                                        package: 'khmer_fonts',
                                      ),
                                    ),
                                  ))
                            ],
                          );
                        },
                        valueListenable: _isFinishReadingVal,
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
  }
}

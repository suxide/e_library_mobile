import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

class ColorTheme {
  //Color
  static const Color bg = Color(0xfff2e5d0);
  static const Color appBar = Color(0xfff2e5d0);
  static const Color black = Colors.black87;
  static const Color highLightColor = Colors.transparent;
  static const Color splashColor = Colors.white70;
  static const Color white = Color(0xffFEFCFB);
  static const Color bottomActive = Colors.white;
  static const Color bottomInactive = Colors.white38;
  static const Color title = Color(0xff49372D);
  static const Color bottomBar = Color(0xFFECBB5F);
  static const Color loginBg = Color(0xfffbecdd);
  static const Color error = Colors.red;
}

class SizeData {
  //Size
  static const double profileCircle = 40;
  static const double audioBookRadius = 40;
}

class IconDataTheme {
  //Icon
  static const IconData user = FlutterRemix.user_line;
  static const IconData notification = FlutterRemix.notification_2_fill;
  static const IconData search = FlutterRemix.search_line;
  static const IconData headphone = FlutterRemix.headphone_fill;
  static const IconData key = FlutterRemix.key_2_line;
  static const IconData eye = FlutterRemix.eye_fill;
  static const IconData eye_off = FlutterRemix.eye_off_fill;
  static const IconData bookmarkSave = FlutterRemix.book_mark_fill;
  static const IconData bookmarkUnSave = FlutterRemix.book_mark_line;
  static const IconData download = FlutterRemix.download_cloud_2_line;
  static const IconData seeAll = FlutterRemix.arrow_right_line;
  static const IconData star = FlutterRemix.star_s_fill;
  static const IconData unFavorite = FlutterRemix.heart_3_line;
  static const IconData favorite = FlutterRemix.heart_3_fill;
  static const IconData share = FlutterRemix.share_fill;
}

ThemeData textThemeData(BuildContext context) {
  return Theme.of(context);
}

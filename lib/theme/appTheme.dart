import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

class ColorTheme {
  //Color
  static const Color bg = Color(0xfff2e5d0);
  static const Color appBar = Color(0xfff2e5d0);
  static const Color black = Colors.black87;
  static const Color highLightColor = Colors.transparent;
  static const Color splashColor = Colors.white70;
  static const Color white = Colors.white;
}

class SizeData {
  //Size
  static const double profileCircle = 40;
}

class IconDataTheme {
  //Icon
  static const IconData user = FlutterRemix.user_line;
  static const IconData notification = FlutterRemix.notification_2_fill;
  static const IconData search = FlutterRemix.search_line;
}

textThemeData(BuildContext context) {
  return Theme.of(context);
}

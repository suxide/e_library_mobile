import 'package:flutter/material.dart';

class Responsive {
  static isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 680;
  static isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width > 680;
}

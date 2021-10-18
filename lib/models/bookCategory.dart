import 'package:flutter/material.dart';

class BookCategoryModel {
  final String name;
  final IconData icon;
  Color color;
  BookCategoryModel(
      {required this.name, required this.icon, this.color = Colors.white});
}

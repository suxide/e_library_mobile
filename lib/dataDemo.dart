import 'package:e_library_mobile/models/audioBook.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'models/book.dart';

List<Book> books = [
  Book(name: 'A', pathImg: 'assets/images/b1.jpg'),
  Book(name: 'B', pathImg: 'assets/images/b2.jpg'),
  Book(name: 'C', pathImg: 'assets/images/b3.jpg'),
  Book(name: 'D', pathImg: 'assets/images/b4.jpg'),
  Book(name: 'E', pathImg: 'assets/images/b5.jpg'),
  Book(name: 'F', pathImg: 'assets/images/b6.jpg'),
];

List<BarItem> barItems = [
  BarItem(
    icon: FlutterRemix.book_line,
    title: 'ថ្មីៗ',
  ),
  BarItem(
    icon: FlutterRemix.user_2_line,
    title: 'អ្នកនិពន្ធ',
  ),
  BarItem(
    icon: FlutterRemix.bookmark_3_line,
    title: 'រក្សាទុក',
  ),
  BarItem(
    icon: FlutterRemix.headphone_line,
    title: 'សំឡេង',
  ),
];

List<AudioBook> audioBooks = [
  AudioBook(
      title: 'មនុស្សពីរនាក់នៅផ្ទះជិតគ្នា', imgPath: 'assets/images/a1.jpg'),
  AudioBook(title: 'ពាក្យសុភាសិតតំលៃ៣០តម្លឹង', imgPath: 'assets/images/a2.jpg'),
  AudioBook(title: 'បុរសចេះថ្នាំពិសពស់', imgPath: 'assets/images/a3.jpg'),
  AudioBook(
      title: 'ខ្លាចាញ់ប្រាជ្ញាគីង្គក់និងអណ្ដើក',
      imgPath: 'assets/images/a4.jpg'),
  AudioBook(title: 'បងថ្លៃនិងប្អូនថ្លៃ', imgPath: 'assets/images/a5.jpg'),
  AudioBook(
      title: 'បុរសមានកូន៤នាក់រៀនវិជ្ជា៤បទ', imgPath: 'assets/images/a6.jpg'),
];

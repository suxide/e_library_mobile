import 'package:e_library_mobile/models/audioBook.dart';
import 'package:e_library_mobile/models/bookAuthor.dart';
import 'package:e_library_mobile/models/bookCategory.dart';
import 'package:e_library_mobile/theme/appTheme.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'models/book.dart';

List<BookModel> books = [
  BookModel(name: 'A', pathImg: 'assets/images/b1.jpg'),
  BookModel(name: 'B', pathImg: 'assets/images/b2.jpg'),
  BookModel(name: 'C', pathImg: 'assets/images/b3.jpg'),
  BookModel(name: 'D', pathImg: 'assets/images/b4.jpg'),
  BookModel(name: 'E', pathImg: 'assets/images/b5.jpg'),
  BookModel(name: 'F', pathImg: 'assets/images/b6.jpg'),
];

List<BarItem> barItems = [
  BarItem(icon: FlutterRemix.book_line, title: 'ថ្មីៗ'),
  BarItem(
    icon: FlutterRemix.user_2_line,
    title: 'អ្នកនិពន្ធ',
  ),
  BarItem(
    icon: IconDataTheme.bookmarkUnSave,
    title: 'រក្សាទុក',
  ),
  BarItem(
    icon: FlutterRemix.headphone_line,
    title: 'សំឡេង',
  ),
];

List<AudioBookModel> audioBooks = [
  AudioBookModel(
      title: 'មនុស្សពីរនាក់នៅផ្ទះជិតគ្នា', imgPath: 'assets/images/a1.jpg'),
  AudioBookModel(
      title: 'ពាក្យសុភាសិតតម្លៃ៣០តម្លឹង', imgPath: 'assets/images/a2.jpg'),
  AudioBookModel(title: 'បុរសចេះថ្នាំពិសពស់', imgPath: 'assets/images/a3.jpg'),
  AudioBookModel(
      title: 'ខ្លាចាញ់ប្រាជ្ញាគីង្គក់និងអណ្ដើក',
      imgPath: 'assets/images/a4.jpg'),
  AudioBookModel(title: 'បងថ្លៃនិងប្អូនថ្លៃ', imgPath: 'assets/images/a5.jpg'),
  AudioBookModel(
      title: 'បុរសមានកូន៤នាក់រៀនវិជ្ជា៤បទ', imgPath: 'assets/images/a6.jpg'),
];

List<BookCategoryModel> bookCategory = [
  BookCategoryModel(name: 'វិទ្យាសាស្ត្រ', icon: FlutterRemix.test_tube_line),
  BookCategoryModel(name: 'ប្រវត្តិសាស្ត្រ', icon: FlutterRemix.flag_line),
  BookCategoryModel(name: 'បច្ចេកវិទ្យា', icon: FlutterRemix.computer_line),
  BookCategoryModel(name: 'រឿងនិទាន', icon: FlutterRemix.book_open_line),
  BookCategoryModel(
      name: 'ចំណេះដឹងសុខភាព', icon: FlutterRemix.medicine_bottle_line),
];

List<BookAuthorModel> bookAuthors = [
  BookAuthorModel(
      name: 'លី សៀងបុក',
      imgPath: 'assets/images/book_author1.jpg',
      isFavorite: true),
  BookAuthorModel(name: 'ស៊ូ តៅហ៊ី', imgPath: 'assets/images/book_author2.jpg'),
  BookAuthorModel(
      name: 'ម៉ាន ម៉ាលីវ៉ាត់', imgPath: 'assets/images/book_author3.jpg'),
  BookAuthorModel(name: 'ឡង់ ស៊ីមី', imgPath: 'assets/images/book_author4.jpg'),
  BookAuthorModel(
      name: 'លី ស៊ីម៉ង់', imgPath: 'assets/images/book_author5.jpg'),
];

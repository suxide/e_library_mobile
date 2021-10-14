import 'package:e_library_mobile/models/audioBook.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'models/book.dart';

List<Book> books = [
  Book(name: 'A', pathImg: 'assets/images/book1.jpg'),
  Book(name: 'B', pathImg: 'assets/images/book2.jpg'),
  Book(name: 'C', pathImg: 'assets/images/book3.jpg'),
  Book(name: 'D', pathImg: 'assets/images/book4.jpg'),
  Book(name: 'E', pathImg: 'assets/images/book5.jpg'),
  Book(name: 'F', pathImg: 'assets/images/book6.jpg'),
];

List<BarItem> barItems = [
  BarItem(
    icon: FlutterRemix.book_line,
    title: 'Explore',
  ),
  BarItem(
    icon: FlutterRemix.search_2_line,
    title: 'Search',
  ),
  BarItem(
    icon: FlutterRemix.bookmark_3_line,
    title: 'Bookmark',
  ),
  BarItem(
    icon: FlutterRemix.headphone_line,
    title: 'Audio',
  ),
];

List<AudioBook> audioBooks = [
  AudioBook(title: 'CD 1', imgPath: 'assets/images/cd1.png'),
  AudioBook(title: 'CD 2', imgPath: 'assets/images/cd2.png'),
  AudioBook(title: 'CD 3', imgPath: 'assets/images/cd3.png'),
  AudioBook(title: 'CD 4', imgPath: 'assets/images/cd4.png'),
];

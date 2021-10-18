class BookAuthorModel {
  final String name;
  final String imgPath;
  bool isFavorite;
  BookAuthorModel(
      {required this.name, required this.imgPath, this.isFavorite = false});
}

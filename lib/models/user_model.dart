class UserModel {
  final String id;
  final String fullKhName;
  final String fullEnName;
  var imageUrl;
  UserModel(
      {required this.id,
      required this.fullKhName,
      required this.fullEnName,
      required this.imageUrl});

  factory UserModel.fromJson(json) {
    return UserModel(
        id: json['_id'],
        fullKhName: "${json['khFirstName']} ${json['khLastName']}",
        fullEnName: "${json['enFirstName']} ${json['enLastName']}",
        imageUrl: json['imageUrl']);
  }
}

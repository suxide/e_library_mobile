class UserModel {
  final String id;
  final String fullKhName;
  final String fullEnName;
  final dynamic imageUrl;
  UserModel(
      {required this.id,
      required this.fullKhName,
      required this.fullEnName,
      required this.imageUrl});
  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "fullKhName": fullKhName,
      "fullEnName": fullEnName,
      'imageUrl': imageUrl
    };
  }

  factory UserModel.fromJson(json) {
    return UserModel(
        id: json['_id'],
        fullKhName: "${json['khFirstName']} ${json['khLastName']}",
        fullEnName: "${json['enFirstName']} ${json['enLastName']}",
        imageUrl: json['imageUrl'][json['imageUrl'].length - 1]['url']);
  }
}

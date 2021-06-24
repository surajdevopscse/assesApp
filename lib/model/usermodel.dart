class UserModel {
  final int? id;
  final String? login;
  final String? avatar_url;
  final String? type;

  factory UserModel.fromJSON(Map<String, dynamic> jsonData) {
    return UserModel(
      id: jsonData["id"],
      login: jsonData["login"],
      avatar_url: jsonData["avatar_url"],
      type: jsonData["type"],
    );
  }

  UserModel({this.id, this.login, this.avatar_url, this.type});
}

import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message; // ex: "Connexion réussie"
  @JsonKey(name: 'data')
  UserData? userData; // Les données de l'utilisateur (token, username, etc.)
  bool? status; // ex: true si succès, false sinon
  int? code; // ex: 200, 401, 500, etc.
  LoginResponse({this.message, this.userData, this.status, this.code});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

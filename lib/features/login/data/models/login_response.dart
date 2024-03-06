import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;
  LoginResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });
  // factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
  //   return LoginResponseModel(
  //       message: json['message'], status: json['status'], code: json['code'],);
  // }
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userNamed;
  UserData({this.token, this.userNamed});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

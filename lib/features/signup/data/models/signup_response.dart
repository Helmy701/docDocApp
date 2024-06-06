import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  String? message;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;
  SignupResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });
  // factory SignupResponseModel.fromJson(Map<String, dynamic> json) {
  //   return SignupResponseModel(
  //       message: json['message'], status: json['status'], code: json['code'],);
  // }
  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
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

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String? message;
  final String? error;
  final UserData? contact;

  User({this.message, this.error, this.contact});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class UserData {
  final String? id;
  final String? firstname;
  final String? lastname;
  final String? email;

  UserData({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

@JsonSerializable()
class LoginRequest {
  final String email;
  final String password;

  LoginRequest({required this.email, required this.password});

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

@JsonSerializable()
class SignUpRequest {
  final String email;
  final String firstname;
  final String lastname;
  final String password;

  SignUpRequest({
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.password,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}

@JsonSerializable()
class UpdateUserRequest {
  final String email;
  final String firstname;
  final String lastname;

  UpdateUserRequest({
    required this.email,
    required this.firstname,
    required this.lastname,
  });

  factory UpdateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserRequestToJson(this);
}
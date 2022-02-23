import 'package:json_annotation/json_annotation.dart';

part 'update_password.g.dart';

@JsonSerializable()
class UpdatePasswordRequest {
  final String id;
  final String password;

  UpdatePasswordRequest({
    required this.id,
    required this.password,
  });

  factory UpdatePasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePasswordRequestToJson(this);
}

@JsonSerializable()
class UpdatePasswordResponse {
  final String? message;
  final String? error;

  UpdatePasswordResponse({this.message, this.error});

  factory UpdatePasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePasswordResponseToJson(this);
}

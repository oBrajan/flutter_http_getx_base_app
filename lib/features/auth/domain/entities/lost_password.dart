import 'package:json_annotation/json_annotation.dart';

part 'lost_password.g.dart';

@JsonSerializable()
class LostPasswordRequest {
  final String email;

  LostPasswordRequest({
    required this.email,
  });

  factory LostPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$LostPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LostPasswordRequestToJson(this);
}

@JsonSerializable()
class LostPasswordResponse {
  final String? message;
  final String? error;

  LostPasswordResponse({this.message, this.error});

  factory LostPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$LostPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LostPasswordResponseToJson(this);
}

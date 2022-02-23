// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePasswordRequest _$UpdatePasswordRequestFromJson(
    Map<String, dynamic> json) {
  return UpdatePasswordRequest(
    id: json['id'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$UpdatePasswordRequestToJson(
        UpdatePasswordRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
    };

UpdatePasswordResponse _$UpdatePasswordResponseFromJson(
    Map<String, dynamic> json) {
  return UpdatePasswordResponse(
    message: json['message'] as String?,
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$UpdatePasswordResponseToJson(
        UpdatePasswordResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
    };

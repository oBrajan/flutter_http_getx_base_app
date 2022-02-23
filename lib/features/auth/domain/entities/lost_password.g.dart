// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lost_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LostPasswordRequest _$LostPasswordRequestFromJson(Map<String, dynamic> json) {
  return LostPasswordRequest(
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$LostPasswordRequestToJson(
        LostPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

LostPasswordResponse _$LostPasswordResponseFromJson(Map<String, dynamic> json) {
  return LostPasswordResponse(
    message: json['message'] as String?,
    error: json['error'] as String?,
  );
}

Map<String, dynamic> _$LostPasswordResponseToJson(
        LostPasswordResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
    };

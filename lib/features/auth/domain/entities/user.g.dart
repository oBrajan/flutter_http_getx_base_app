// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    message: json['message'] as String?,
    error: json['error'] as String?,
    contact: json['contact'] == null
        ? null
        : UserData.fromJson(json['contact'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'message': instance.message,
      'error': instance.error,
      'contact': instance.contact,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    id: json['id'] as String?,
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
    };

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return LoginRequest(
    email: json['email'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

SignUpRequest _$SignUpRequestFromJson(Map<String, dynamic> json) {
  return SignUpRequest(
    email: json['email'] as String,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$SignUpRequestToJson(SignUpRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'password': instance.password,
    };

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return UpdateUserRequest(
    email: json['email'] as String,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
  );
}

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
    };

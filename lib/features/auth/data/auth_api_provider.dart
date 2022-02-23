import 'package:jds_flutter/features/auth/domain/entities/lost_password.dart';
import 'package:jds_flutter/features/auth/domain/entities/update_password.dart';
import 'package:jds_flutter/features/auth/domain/entities/user.dart';
import 'package:jds_flutter/network/api_interface.dart';
import 'package:jds_flutter/network/http_manager.dart';

abstract class IAuthProvider {
  Future<dynamic> signIn(email, password);

  Future<dynamic> signUp(email, firstName, lastName, password);

  Future<dynamic> getUserData(id);

  Future<dynamic> updateUserData({required id, email, firstName, lastName});

  Future<dynamic> lostPassword({required email});

  Future<dynamic> updatePassword({required id, required password});
}

class AuthProvider implements IAuthProvider {
  AuthProvider({required this.httpManager});

  final IHttpManager httpManager;

  @override
  Future<dynamic> signIn(email, password) async {
    LoginRequest request = LoginRequest(email: email, password: password);

    return await httpManager.post(
        url: Api.signIn,
        body: request.toJson(),
        headers: Api.header,
        query: {});
  }

  @override
  Future signUp(email, firstName, lastName, password) async {
    SignUpRequest request = SignUpRequest(
      email: email,
      firstname: firstName,
      lastname: lastName,
      password: password,
    );

    return await httpManager.post(
        url: Api.signUp,
        body: request.toJson(),
        headers: Api.header,
        query: {});
  }

  @override
  Future getUserData(id) async {
    return await httpManager.get(
      url: "${Api.profile}/$id",
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future updateUserData({required id, email, firstName, lastName}) async {
    UpdateUserRequest request = UpdateUserRequest(
      email: email,
      firstname: firstName,
      lastname: lastName,
    );

    return await httpManager.put(
      url: "${Api.profile}/$id",
      body: request.toJson(),
      headers: Api.header,
      query: {},
    );
  }

  @override
  Future lostPassword({required email}) async {
    LostPasswordRequest request = LostPasswordRequest(email: email);

    return await httpManager.post(
        url: Api.lostpassword,
        body: request.toJson(),
        headers: Api.header,
        query: {});
  }

  @override
  Future updatePassword({required id, required password}) async {
    UpdatePasswordRequest request = UpdatePasswordRequest(
      id: id,
      password: password,
    );

    return await httpManager.post(
        url: Api.updatepassword,
        body: request.toJson(),
        headers: Api.header,
        query: {});
  }
}

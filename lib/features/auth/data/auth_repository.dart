import 'package:jds_flutter/features/auth/domain/adapters/auth_repository_adapter.dart';
import 'package:jds_flutter/features/auth/domain/entities/lost_password.dart';
import 'package:jds_flutter/features/auth/domain/entities/update_password.dart';
import 'package:jds_flutter/features/auth/domain/entities/user.dart';

import 'auth_api_provider.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({required this.provider});

  final IAuthProvider provider;

  @override
  Future<User> signIn(email, password) async {
    try {
      return User.fromJson(await provider.signIn(email, password));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> signUp(email, firstName, lastName, password) async {
    try {
      return User.fromJson(
          await provider.signUp(email, firstName, lastName, password));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> getUserData(id) async {
    try {
      return User.fromJson(await provider.getUserData(id));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User> updateUserData({required id, email, firstName, lastName}) async {
    try {
      return User.fromJson(await provider.updateUserData(
          id: id, email: email, firstName: firstName, lastName: lastName));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LostPasswordResponse> lostPassword({required email}) async {
    try {
      return LostPasswordResponse.fromJson(
          await provider.lostPassword(email: email));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdatePasswordResponse> updatePassword(
      {required id, required password}) async {
    try {
      return UpdatePasswordResponse.fromJson(
          await provider.updatePassword(id: id, password: password));
    } catch (e) {
      rethrow;
    }
  }
}

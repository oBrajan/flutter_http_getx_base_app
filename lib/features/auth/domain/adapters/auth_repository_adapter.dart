import 'package:jds_flutter/features/auth/domain/entities/lost_password.dart';
import 'package:jds_flutter/features/auth/domain/entities/update_password.dart';
import 'package:jds_flutter/features/auth/domain/entities/user.dart';

abstract class IAuthRepository {
  Future<User> signIn(email, password);

  Future<User> signUp(email, firstName, lastName, password);

  Future<User> getUserData(id);

  Future<User> updateUserData({required id, email, firstName, lastName});

  Future<UpdatePasswordResponse> updatePassword({required id, required password});

  Future<LostPasswordResponse> lostPassword({required email});
}

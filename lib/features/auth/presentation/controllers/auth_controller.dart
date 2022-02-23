import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jds_flutter/features/auth/domain/adapters/auth_repository_adapter.dart';
import 'package:jds_flutter/features/auth/domain/entities/user.dart';
import 'package:jds_flutter/shared/constants.dart';

class AuthController extends GetxController {
  AuthController({required this.authRepository});

  final IAuthRepository authRepository;

  var prefs = GetStorage();
  final userId = "".obs;
  final user = User().obs;

  bool get isUserLoggedIn => userId.value.isNotEmpty;

  final _loading = false.obs;

  bool get loading => _loading.value;

  @override
  void onInit() {
    initUser();
    super.onInit();
  }

  void initUser() {
    if (prefs.read(Constants.userId) != null) {
      userId.value = prefs.read(Constants.userId);
    }

    if (prefs.read(Constants.user) != null) {
      user.value = User.fromJson(json.decode(prefs.read(Constants.user)));
    }
  }

  void signIn() async {
    _loading.value = true;
    await authRepository.signIn("milosrajic@gmail.com", "123456").then(
        (response) {
      _loading.value = false;

      userId.value = response.contact!.id ?? '';
      user.value = response;

      prefs.write(Constants.userId, response.contact?.id);
      prefs.write(Constants.user, json.encode(response.toJson()));

      // Get.offAllNamed(Routes.SPLASH);
    }, onError: (e) {
      _loading.value = false;
      Get.snackbar(
        e["message"],
        e["error"],
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  void getUserData() async {
    await authRepository.getUserData("292196651").then((response) {
      _loading.value = false;

      userId.value = response.contact!.id ?? '';
      user.value = response;

      prefs.write(Constants.userId, response.contact?.id);
      prefs.write(Constants.user, json.encode(response.toJson()));

      // Get.offAllNamed(Routes.SPLASH);
    }, onError: (e) {
      _loading.value = false;
      Get.snackbar(
        e["message"],
        e["error"],
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  void signOut() {
    prefs.write(Constants.userId, "");
    userId.value = "";
  }
}

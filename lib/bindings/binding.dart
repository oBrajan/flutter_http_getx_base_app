import 'package:get/get.dart';
import 'package:jds_flutter/features/auth/data/auth_api_provider.dart';
import 'package:jds_flutter/features/auth/data/auth_repository.dart';
import 'package:jds_flutter/features/auth/domain/adapters/auth_repository_adapter.dart';
import 'package:jds_flutter/features/auth/presentation/controllers/auth_controller.dart';
import 'package:jds_flutter/features/home/data/home_api_provider.dart';
import 'package:jds_flutter/features/home/data/home_repository.dart';
import 'package:jds_flutter/features/home/domain/adapters/home_repository_adapter.dart';
import 'package:jds_flutter/features/home/presentation/controllers/home_controller.dart';
import 'package:jds_flutter/network/http_manager.dart';

class JdsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHttpManager>(() => HttpManager());

    // Providers
    Get.lazyPut<IAuthProvider>(() => AuthProvider(httpManager: Get.find()));
    Get.lazyPut<IHomeProvider>(() => HomeProvider(httpManager: Get.find()));

    // Repositories
    Get.lazyPut<IAuthRepository>(() => AuthRepository(provider: Get.find()));
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));

    // Controllers
    Get.lazyPut(() => AuthController(authRepository: Get.find()));
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}

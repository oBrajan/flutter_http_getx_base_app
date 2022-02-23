import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:jds_flutter/bindings/binding.dart';
import 'package:jds_flutter/features/auth/presentation/auth_screen.dart';
import 'package:jds_flutter/features/home/presentation/views/home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreen(),
    ),
    // GetPage(
    //   name: Routes.LOGIN,
    //   page: () => LoginPage(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: Routes.DETAILS,
    //   page: () => ArticleDetailsScreen(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: Routes.DETAILS_FULLSCREEN,
    //   page: () => ArticleDetailsFullscreenImage(),
    //   binding: HomeBinding(),
    // ),
  ];
}

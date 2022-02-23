import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jds_flutter/features/home/presentation/views/home_screen.dart';
import 'package:jds_flutter/routes/app_pages.dart';
import 'package:jds_flutter/shared/constants.dart';
import 'package:jds_flutter/shared/logger_utils.dart';

import 'bindings/binding.dart';
import 'features/auth/presentation/auth_screen.dart';

void main() {
  runApp(const JDSApp());
}

class JDSApp extends StatelessWidget {
  const JDSApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: JdsBinding(),
      enableLog: true,
      logWriterCallback: Logger.write,
      home: const HomeScreen(),
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: AppPages.routes,
      theme: Themes.dark,
    );
  }
}

class Themes {
  static final light = ThemeData.light().copyWith(
    primaryColor: AppColors.black,
    primaryColorLight: AppColors.white,
    focusColor: AppColors.black,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.white.withOpacity(0.7)),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
  );
  static final dark = ThemeData.dark().copyWith(
    primaryColor: AppColors.black,
    primaryColorLight: AppColors.white,
    focusColor: AppColors.black,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.white.withOpacity(0.7)),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
  );
}

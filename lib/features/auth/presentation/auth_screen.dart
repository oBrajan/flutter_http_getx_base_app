import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/auth_controller.dart';
import 'views/login.dart';
import 'views/profile.dart';

class SplashScreen extends GetWidget<AuthController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JDS',
      home: Obx(() {
        return Scaffold(
          appBar: AppBar(
            title: const Text('JDS App'),
          ),
          body: Center(
            child: controller.loading
                ? const CircularProgressIndicator()
                : controller.isUserLoggedIn
                    ? Profile(controller.user.value.contact!.firstname)
                    : const Login(),
          ),
        );
      }),
    );
  }
}

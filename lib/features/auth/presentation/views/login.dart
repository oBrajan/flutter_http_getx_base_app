import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jds_flutter/features/auth/presentation/controllers/auth_controller.dart';

class Login extends GetWidget<AuthController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            controller.signIn();
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}

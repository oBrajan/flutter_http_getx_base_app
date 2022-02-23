import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jds_flutter/features/auth/presentation/controllers/auth_controller.dart';

class Profile extends GetWidget<AuthController> {
  final String? name;

  const Profile(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
        ),
        SizedBox(height: 24.0),
        Text('Name: $name'),
        SizedBox(height: 48.0),
        RaisedButton(
          onPressed: () {
            controller.signOut();
          },
          child: Text('Logout'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jds_flutter/features/home/presentation/controllers/home_controller.dart';
import 'package:jds_flutter/routes/app_pages.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      controller.getConstancesList();
                    },
                    child: controller.loading
                        ? const CircularProgressIndicator()
                        : Text(controller.constances.isNotEmpty
                            ? controller.constances[0].title.toString()
                            : "Get constances")),
                ElevatedButton(
                    onPressed: () {
                      controller.getConstance();
                    },
                    child: const Text("Constance")),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.SPLASH);
                    },
                    child: const Text("Auth")),
              ],
            ),
          ),
        ));
  }
}

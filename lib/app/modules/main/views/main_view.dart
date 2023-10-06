import 'package:ecommerce_app/app/modules/main/controllers/navbar_controller.dart';
import 'package:ecommerce_app/app/modules/main/views/navbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MainView'),
          centerTitle: true,
        ),
        body: Obx(() =>
            controller.pages[Get.find<NavbarController>().selectedPage.value]),
        bottomNavigationBar:
            Obx(() => navbar(Get.find<NavbarController>().selectedPage.value)),
      ),
    );
  }
}

import 'package:ecommerce_app/app/modules/main/controllers/navbar_controller.dart';
import 'package:ecommerce_app/app/modules/main/views/navbar.dart';
import 'package:ecommerce_app/app/shared/widget/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.scaffoldKey,
        drawer: const AppDrawer(),
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: '/home',
          onGenerateRoute: controller.onGenerateRoute,
        ),
        bottomNavigationBar: Obx(() => controller.isDrawerOpen.value == false
            ? navbar(Get.find<NavbarController>().selectedPage.value)
            : Container()),
      ),
    );
  }
}

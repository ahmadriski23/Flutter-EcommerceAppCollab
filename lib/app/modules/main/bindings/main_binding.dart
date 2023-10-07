import 'package:ecommerce_app/app/modules/main/controllers/navbar_controller.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavbarController());
    Get.lazyPut<MainController>(
      () => MainController(),
    );
  }
}

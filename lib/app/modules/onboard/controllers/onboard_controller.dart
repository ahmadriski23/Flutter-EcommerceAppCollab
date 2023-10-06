import 'package:get/get.dart';

class OnboardController extends GetxController {
  //TODO: Implement OnboardController

  final count = 0.obs;

  final isMenSelected = false.obs;
  final isWomenSelected = false.obs;

  void selectMen() {
    isMenSelected.value = true;
    isWomenSelected.value = false;
  }

  void selectWomen() {
    isMenSelected.value = false;
    isWomenSelected.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    selectMen();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

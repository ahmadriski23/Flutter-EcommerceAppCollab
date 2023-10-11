import 'package:ecommerce_app/app/models/product.dart';
import 'package:get/get.dart';

class DetailProductController extends GetxController {
  //TODO: Implement DetailProductController
  final count = 0.obs;
  final Product product = Get.arguments as Product;

  final selectedSize = ''.obs;
  final sizes = ['S', 'M', 'L', 'XL', '2XL'];

  void selectSize(String size) {
    selectedSize.value = size;
  }

  @override
  void onInit() {
    super.onInit();
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

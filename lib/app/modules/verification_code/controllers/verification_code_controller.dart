import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class VerificationCodeController extends GetxController {
  //TODO: Implement VerificationCodeController

  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  static const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
  static const borderColor = Color.fromRGBO(23, 171, 144, 0.4);
  static const fillColor = Color.fromRGBO(243, 246, 249, 0);

  final defaultPinTheme = PinTheme(
      width: 77,
      height: 98,
      textStyle: AppText.blackText.copyWith(fontSize: 22),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(23, 171, 144, 0.4)),
      ));

  final count = 0.obs;
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
    pinController.dispose();
    focusNode.dispose();
  }

  void increment() => count.value++;
}

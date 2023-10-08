import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

  final count = 0.obs;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final isIconChecked = false.obs;
  final isPasswordStrong = false.obs;
  final passwordStrengthMessage = 'Weak'.obs;

  bool _isStrongPassword(String password) {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$').hasMatch(password);
  }

  @override
  void onInit() {
    super.onInit();
    // * USERNAME
    usernameController.addListener(() {
      final usernameText = usernameController.text;
      if (usernameText.length > 8) {
        isIconChecked.value = true;
      } else {
        isIconChecked.value = false;
      }
    });
    // * PASSWORD
    passwordController.addListener(() {
      final password = passwordController.text;
      final isStrongPassword = _isStrongPassword(password);
      isPasswordStrong.value = isStrongPassword;
      passwordStrengthMessage.value = isStrongPassword ? 'Strong' : 'Weak';
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }

  void increment() => count.value++;
}

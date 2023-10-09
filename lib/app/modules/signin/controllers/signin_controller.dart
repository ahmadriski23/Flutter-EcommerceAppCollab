import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController

  final count = 0.obs;

  // * TEXT EDITING CONTROLLER
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // * VALIDATE
  final isPasswordVisible = true.obs;
  final isEmailValid = false.obs;
  final isIconChecked = false.obs;
  final isPasswordStrong = false.obs;
  final passwordStrengthMessage = 'Weak'.obs;

  final switchValue = true.obs;

  bool isValidateEmail(String email) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegex.hasMatch(email);
  }

  bool _isStrongPassword(String password) {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).+$').hasMatch(password);
  }

  void tooglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  @override
  void onInit() {
    super.onInit();

    // * USERNAME VALIDATE
    usernameController.addListener(() {
      final usernameText = usernameController.text;
      if (usernameText.length > 8) {
        isIconChecked.value = true;
      } else {
        isIconChecked.value = false;
      }
    });

    // * PASSWORD VALIDATE
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

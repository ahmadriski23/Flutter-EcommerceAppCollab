import 'package:ecommerce_app/app/shared/widget/back_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SignupController _controller = Get.put(SignupController());
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: const QBackButton(),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text('Sign Up',
                    style: AppText.blackText
                        .copyWith(fontSize: 28, fontWeight: FontWeight.w600)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                controller: _controller.usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'Username...',
                  hintStyle: AppText.blackText
                      .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  labelStyle: AppText.grayText.copyWith(fontSize: 13),
                  disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: AppColors.gray,
                    width: 0.5,
                  )),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.5, color: AppColors.purple)),
                  suffixIcon: Obx(
                    () => _controller.isIconChecked.value
                        ? const Icon(
                            Icons.check,
                            color: AppColors.green,
                          )
                        : const Icon(
                            Icons.close,
                            color: AppColors.red,
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                  obscureText: true,
                  controller: _controller.passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password...',
                    hintStyle: AppText.blackText
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                    labelStyle: AppText.grayText.copyWith(fontSize: 13),
                    disabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: AppColors.gray,
                      width: 0.5,
                    )),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.5, color: AppColors.purple),
                    ),
                    suffix: Obx(() => Text(
                          _controller.passwordStrengthMessage.value,
                          style: AppText.purpleText.copyWith(
                              color: _controller.isPasswordStrong.value
                                  ? AppColors.green
                                  : AppColors.red),
                        )),
                  )),
            ),
          ],
        ));
  }
}

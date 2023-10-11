import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/widget/back_button.dart';
import 'package:ecommerce_app/app/shared/widget/bottom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/utils/text.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const QBackButton(),
      ),
      body: Obx(
        () => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Center(
                child: Text('Forgot Password',
                    style: AppText.blackText
                        .copyWith(fontSize: 28, fontWeight: FontWeight.w600)),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 166,
                width: 255,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/img/lock.png'))),
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                onChanged: (value) {
                  final isEmailValid = controller.isValidEmail(value);
                  controller.isEmailValid.value = isEmailValid;
                },
                controller: controller.emailController,
                style: AppText.blackText
                    .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Your Email...',
                    labelStyle: AppText.grayText.copyWith(
                      fontSize: 13,
                    ),
                    hintStyle: AppText.blackText.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 0.5, color: AppColors.purple),
                    ),
                    disabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: AppColors.gray),
                    ),
                    suffix: controller.isEmailValid.value
                        ? const Icon(
                            Icons.check_circle,
                            color: AppColors.green,
                          )
                        : const Icon(
                            Icons.cancel,
                            color: AppColors.red,
                          )),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65.0),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Please write your email to receive a confirmation code to set a new password.',
                    style: AppText.grayText.copyWith(
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            QBottomButton(text: 'Confirm Mail', onTap: () {})
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/widget/back_button.dart';
import 'package:ecommerce_app/app/shared/widget/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/utils/text.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          leading: const QBackButton(),
        ),
        body: Obx(() => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: Text('Welcome',
                        style: AppText.blackText.copyWith(
                            fontSize: 28, fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: Text('Please enter your data to continue',
                        style: AppText.grayText.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    style: AppText.blackText.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    controller: controller.usernameController,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.purple,
                        ),
                      ),
                      disabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 0.5, color: AppColors.gray)),
                      labelStyle: AppText.grayText.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                      hintStyle: AppText.blackText
                          .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                      hintText: 'Username...',
                      labelText: 'Username',
                      suffix: controller.isIconChecked.value
                          ? const Icon(
                              Icons.check_circle,
                              color: AppColors.green,
                            )
                          : const Icon(
                              Icons.cancel,
                              color: AppColors.red,
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
                    obscureText: controller.isPasswordVisible.value,
                    style: AppText.blackText.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    controller: controller.passwordController,
                    decoration: InputDecoration(
                        labelStyle: AppText.grayText.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        hintStyle: AppText.blackText.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        disabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 0.5, color: AppColors.gray)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                          width: 0.5,
                          color: AppColors.purple,
                        )),
                        hintText: 'Password...',
                        labelText: 'Password',
                        prefix: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            controller.passwordStrengthMessage.value,
                            style: AppText.blackText.copyWith(
                                color: controller.isPasswordStrong.value
                                    ? AppColors.green
                                    : AppColors.red),
                          ),
                        ),
                        suffix: InkWell(
                            onTap: () {
                              controller.tooglePasswordVisibility();
                            },
                            child: controller.isPasswordVisible.value
                                ? const Icon(
                                    Icons.visibility,
                                    color: AppColors.purple,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: AppColors.gray,
                                  ))),
                  ),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: AppText.redText.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ListTile(
                    leading: Text(
                      'Remember Me',
                      style: AppText.blackText.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    trailing: Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          value: controller.switchValue.value,
                          onChanged: (value) {
                            controller.switchValue.value = value;
                          }),
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'By connecting your account confirm that you agree',
                      style: AppText.grayText.copyWith(fontSize: 13),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('with our',
                            style: AppText.grayText.copyWith(fontSize: 13)),
                        const SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Term and Condition',
                            style: AppText.blackText.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QBottomButton(text: 'Login', onTap: () {}),
              ],
            )));
  }
}

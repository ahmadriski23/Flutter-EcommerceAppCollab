import 'package:ecommerce_app/app/shared/widget/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text.dart';
import '../../../shared/widget/bottom_button.dart';
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
      body: Obx(() => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text('Sign Up',
                      style: AppText.blackText
                          .copyWith(fontSize: 28, fontWeight: FontWeight.w600)),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  style: AppText.blackText.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
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
                    suffix: _controller.isIconChecked.value
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
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  style: AppText.blackText.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  obscureText: !_controller.isPasswordVisible.value,
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
                    prefix: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _controller.passwordStrengthMessage.value,
                        style: AppText.purpleText.copyWith(
                            fontSize: 12,
                            color: _controller.isPasswordStrong.value
                                ? AppColors.green
                                : AppColors.red),
                      ),
                    ),
                    suffix: InkWell(
                        onTap: () {
                          _controller.tooglePasswordVisibility();
                        },
                        child: _controller.isPasswordVisible.value
                            ? const Icon(
                                Icons.visibility,
                                color: AppColors.gray,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: AppColors.purple,
                              )),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  style: AppText.blackText.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  controller: _controller.emailController,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    hintText: 'Your Email...',
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
                    suffix: _controller.isEmailValid.value
                        ? Icon(
                            Icons.check,
                            color: AppColors.green,
                          )
                        : Icon(
                            Icons.close,
                            color: AppColors.red,
                          ),
                  ),
                  onChanged: (value) {
                    final isEmailValid = _controller.isValidEmail(value);
                    _controller.isEmailValid.value = isEmailValid;
                  },
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                        value: _controller.switchValue.value,
                        onChanged: (value) {
                          _controller.switchValue.value = value;
                        }),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'By connecting your account confirm that you agree',
                style: AppText.grayText.copyWith(
                  fontSize: 13,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'with our ',
                    style: AppText.grayText.copyWith(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Term and Condition',
                    style: AppText.blackText.copyWith(fontSize: 13),
                  )
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              QBottomButton(
                onTap: () {},
                text: 'Sign Up',
              )
            ],
          )),
    );
  }
}

// ignore_for_file: avoid_print
import 'package:ecommerce_app/app/shared/widget/back_button.dart';
import 'package:ecommerce_app/app/shared/widget/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../shared/utils/colors.dart';
import '../../../shared/utils/text.dart';
import '../controllers/verification_code_controller.dart';

class VerificationCodeView extends GetView<VerificationCodeController> {
  const VerificationCodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: const QBackButton(),
      ),
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Text('Verification Code',
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
            Directionality(
              textDirection: TextDirection.ltr,
              child: Pinput(
                controller: controller.pinController,
                focusNode: controller.focusNode,
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsUserConsentApi,
                listenForMultipleSmsOnAndroid: true,
                defaultPinTheme: controller.defaultPinTheme,
                separatorBuilder: (index) => const SizedBox(
                  width: 8,
                ),
                validator: (value) {
                  return value == '2222' ? null : 'Pin is incorrect';
                },
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                onCompleted: (pin) {
                  print('onCompleted: $pin');
                },
                onChanged: (value) {
                  print('onChanged: $value');
                },
                cursor: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 9),
                      width: 22,
                      height: 1,
                      color: const Color.fromRGBO(23, 171, 144, 1),
                    )
                  ],
                ),
                focusedPinTheme: controller.defaultPinTheme.copyWith(
                  decoration: controller.defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: const Color.fromRGBO(23, 171, 144, 1),
                    ),
                  ),
                ),
                submittedPinTheme: controller.defaultPinTheme.copyWith(
                  decoration: controller.defaultPinTheme.decoration!.copyWith(
                    color: const Color.fromRGBO(243, 246, 249, 0),
                    border: Border.all(
                      color: const Color.fromRGBO(23, 171, 144, 1),
                    ),
                  ),
                ),
                errorPinTheme: controller.defaultPinTheme.copyBorderWith(
                  border: Border.all(color: Colors.redAccent),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '00:20',
                  style: AppText.blackText
                      .copyWith(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  'resend confirmation code',
                  style: AppText.grayText.copyWith(fontSize: 13),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            QBottomButton(
                text: 'Confirm Code',
                onTap: () {
                  controller.focusNode.unfocus();
                  controller.formKey.currentState!.validate();
                })
          ],
        ),
      ),
    );
  }
}

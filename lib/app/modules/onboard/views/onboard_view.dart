import 'package:ecommerce_app/app/modules/onboard/widget/gender_button.dart';
import 'package:ecommerce_app/app/modules/started/views/started_view.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          color: const Color(0xff7661C5),
          child: Obx(
            () => SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: size.height,
                        width: size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/img/men.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 550, 20, 0),
                        child: Container(
                          height: 255,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Look Good, Feel Good',
                                  style: AppText.blackText.copyWith(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  'Create your individual & unique style and look amazing everyday',
                                  style:
                                      AppText.grayText.copyWith(fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),

                                // *  SELECT GENDER BUTTON
                                Row(
                                  children: [
                                    GenderButton(
                                      onTap: () {
                                        controller.selectMen();
                                      },
                                      decoration: BoxDecoration(
                                        color: controller.isMenSelected.value
                                            ? const Color(0xff9775FA)
                                            : const Color(0xffF5F6FA),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: controller.isMenSelected.value
                                          ? const Color(0xff9775FA)
                                          : const Color(0xffF5F6FA),
                                      text: 'Men',
                                      textStyle: AppText.whiteText.copyWith(
                                          color: controller.isMenSelected.value
                                              ? Colors.white
                                              : const Color(0xff8F959E),
                                          fontSize: 17),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    GenderButton(
                                      onTap: () {
                                        controller.selectWomen();
                                      },
                                      decoration: BoxDecoration(
                                        color: controller.isWomenSelected.value
                                            ? const Color(0xff9775FA)
                                            : const Color(0xffF5F6FA),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      color: controller.isWomenSelected.value
                                          ? const Color(0xff9775FA)
                                          : const Color(0xffF5F6FA),
                                      text: 'Women',
                                      textStyle: AppText.whiteText.copyWith(
                                          color:
                                              controller.isWomenSelected.value
                                                  ? Colors.white
                                                  : const Color(0xff8F959E),
                                          fontSize: 17),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed('/started');
                                  },
                                  child: Text('Skip',
                                      style: AppText.grayText
                                          .copyWith(fontSize: 17)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}

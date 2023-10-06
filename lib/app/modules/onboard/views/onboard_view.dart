import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboard_controller.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        color: Color(0xff7661C5),
        child: Obx(
          () => Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/men.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 500, 20, 0),
                    child: Container(
                      height: 250,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              controller.selectMen();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: controller.isMenSelected.value
                                    ? Colors.yellow
                                    : Colors.red),
                            child: Text(
                              'Men',
                              style: TextStyle(
                                  color: controller.isMenSelected.value
                                      ? Colors.yellow
                                      : Colors.red),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                controller.selectWomen();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      controller.isWomenSelected.value
                                          ? Colors.yellow
                                          : Colors.red),
                              child: Text(
                                'Women',
                                style: TextStyle(
                                    color: controller.isWomenSelected.value
                                        ? Colors.red
                                        : Colors.yellow),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

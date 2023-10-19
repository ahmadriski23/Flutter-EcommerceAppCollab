import 'package:ecommerce_app/app/modules/main/controllers/main_controller.dart';
import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:ecommerce_app/app/shared/widget/drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 15,
      backgroundColor: AppColors.white,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Get.find<MainController>().closeDrawer();
                },
                child: Image.asset(
                  'assets/icons/vertical-menu.png',
                  width: 45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 45 / 2,
                    backgroundColor: AppColors.purple,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: AppText.blackText.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Verified Profile",
                        style: AppText.grayText.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.lightGrey,
                    ),
                    child: Text(
                      '3 Orders',
                      style: AppText.grayText.copyWith(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/sun.png',
                        width: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Dark Mode',
                        style: AppText.blackText.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      const Spacer(),
                      Obx(
                        () => SizedBox(
                          width: 45,
                          height: 25,
                          child: FittedBox(
                            child: CupertinoSwitch(
                              activeColor: AppColors.purple,
                              value:
                                  Get.find<MainController>().isDarkmode.value,
                              onChanged: (a) {
                                Get.find<MainController>().isDarkmode.value = a;
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DrawItem(
                    title: 'Account Information',
                    icon: 'assets/icons/info.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DrawItem(
                    title: 'Password',
                    icon: 'assets/icons/lock.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DrawItem(
                    title: 'Order',
                    icon: 'assets/icons/bag.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DrawItem(
                    title: 'My Cards',
                    icon: 'assets/icons/mini-wallet.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DrawItem(
                    title: 'Wishlist',
                    icon: 'assets/icons/mini-heart.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const DrawItem(
                    title: 'Settings',
                    icon: 'assets/icons/setting.png',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/logout.png',
                        width: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Logout",
                        style: AppText.redText.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

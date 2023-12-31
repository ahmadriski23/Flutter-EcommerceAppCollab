import 'package:ecommerce_app/app/modules/main/controllers/navbar_controller.dart';
import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

navbar(int selectedPage) {
  return Container(
      width: 375,
      height: 80,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x141D1E20),
            blurRadius: 20,
            offset: Offset(0, -4),
            spreadRadius: 10,
          )
        ],
        color: AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          selectedPage == 0
              ? Text(
                  "Home",
                  style: AppText.purpleText.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<NavbarController>().selectedPage.value = 0;
                    Get.toNamed('/home', id: 1);
                  },
                  child: Image.asset(
                    'assets/icons/home.png',
                    width: 20,
                  ),
                ),
          selectedPage == 1
              ? Text(
                  "Wishlist",
                  style: AppText.purpleText.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<NavbarController>().selectedPage.value = 1;
                    Get.toNamed('/wishlist', id: 1);
                  },
                  child: Image.asset(
                    'assets/icons/wishlist.png',
                    width: 20,
                  ),
                ),
          selectedPage == 2
              ? Text(
                  "Cart",
                  style: AppText.purpleText.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<NavbarController>().selectedPage.value = 2;
                    Get.toNamed('/cart', id: 1);
                  },
                  child: Image.asset(
                    'assets/icons/cart.png',
                    width: 20,
                  ),
                ),
          selectedPage == 3
              ? Text(
                  "Wallet",
                  style: AppText.purpleText.copyWith(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : InkWell(
                  onTap: () {
                    Get.find<NavbarController>().selectedPage.value = 3;
                    Get.toNamed('/wallet', id: 1);
                  },
                  child: Image.asset(
                    'assets/icons/wallet.png',
                    width: 20,
                  ),
                ),
        ],
      ));
}

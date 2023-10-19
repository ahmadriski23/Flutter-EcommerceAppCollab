import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

AppBar myAppBar(String title) {
  return AppBar(
    backgroundColor: AppColors.white,
    elevation: 0,
    centerTitle: true,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        child: Image.asset(
          'assets/icons/back.png',
          width: 45,
        ),
      ),
    ),
    title: Text(
      title,
      style: AppText.blackText.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

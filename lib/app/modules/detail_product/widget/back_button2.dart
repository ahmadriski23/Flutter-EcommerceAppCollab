import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/utils/colors.dart';

class QBackButton2 extends StatelessWidget {
  const QBackButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child: Container(
        height: 50,
        width: 50,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Icon(Icons.arrow_back_ios, color: AppColors.black),
        ),
      ),
    );
  }
}

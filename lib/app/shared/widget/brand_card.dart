import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.title, required this.icon});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      margin: const EdgeInsets.only(right: 10),
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.lightGrey, borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('assets/icons/$icon'),
        ),
        const SizedBox(
          width: 18,
        ),
        Text(
          title,
          style: AppText.blackText.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        )
      ]),
    );
  }
}

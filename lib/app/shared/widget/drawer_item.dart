import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

class DrawItem extends StatelessWidget {
  const DrawItem({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          icon,
          width: 25,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: AppText.blackText.copyWith(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

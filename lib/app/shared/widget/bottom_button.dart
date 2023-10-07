import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class QBottomButton extends StatelessWidget {
  final String text;
  const QBottomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 75,
      width: size.width,
      decoration: const BoxDecoration(
        color: AppColors.purple,
      ),
      child: Center(
        child: Text(text,
            style: AppText.whiteText.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            )),
      ),
    );
  }
}

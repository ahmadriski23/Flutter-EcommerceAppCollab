import 'package:flutter/material.dart';

import '../../../shared/utils/colors.dart';

class QAccountButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color decorationColor;
  final String text;
  const QAccountButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.decorationColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: size.width,
          height: 50,
          decoration: BoxDecoration(
            color: decorationColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                text,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 17,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImage extends StatelessWidget {
  final String image;
  const ProductImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}

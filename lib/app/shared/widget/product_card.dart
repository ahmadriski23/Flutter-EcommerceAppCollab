import 'package:ecommerce_app/app/models/product.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.onTap});
  final Product product;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(product.image.toString()),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  product.title.toString(),
                  style: AppText.blackText.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.clip,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "\$${product.price.toString()}",
                  style: AppText.blackText.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            Align(
              alignment: const Alignment(0.9, -0.9),
              child: Image.asset(
                'assets/icons/heart.png',
                width: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

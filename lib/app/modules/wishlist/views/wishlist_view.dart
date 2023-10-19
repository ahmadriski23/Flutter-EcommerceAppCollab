import 'package:ecommerce_app/app/models/product.dart';
import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:ecommerce_app/app/shared/widget/app_bar.dart';
import 'package:ecommerce_app/app/shared/widget/product_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wishlist_controller.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Wishlist'),
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '365 Items',
                      style: AppText.blackText.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'In wishlist',
                      style: AppText.grayText.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset(
                  'assets/icons/edit.png',
                  width: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Edit',
                  style: AppText.blackText.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.6,
                    crossAxisSpacing: 15,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final product = Product(
                        title: "Nike Sportswear Club Fleece",
                        price: 99,
                        image: "assets/img/product1.png",
                        brand: "Nike");
                    return ProductCard(
                      onTap: () => Get.toNamed(
                        '/detail-product',
                        arguments: product,
                      ),
                      product: product,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

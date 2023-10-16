import 'package:ecommerce_app/app/modules/detail_product/widget/back_button2.dart';
import 'package:ecommerce_app/app/modules/detail_product/widget/card_reviews.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:ecommerce_app/app/shared/widget/bottom_button.dart';
import 'package:ecommerce_app/app/shared/widget/mini_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import '../../../shared/utils/colors.dart';
import '../controllers/detail_product_controller.dart';
import '../widget/product_image.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ProductImage(image: '${controller.product.image}'),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const QBackButton2(),
                          MiniCart(
                            onTap: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              Text(
                                controller.product.title ?? '',
                                style: AppText.blackText.copyWith(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Price',
                              style: AppText.grayText.copyWith(
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              '\$${controller.product.price.toString()}',
                              style: AppText.blackText.copyWith(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/img/image-detail.png'),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size',
                        style: AppText.blackText.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Size Guide',
                        style: AppText.grayText.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Center(
                    child: SizedBox(
                      height: 70,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: controller.sizes.map((size) {
                            final isSelected = controller.selectedSize == size;
                            return GestureDetector(
                              onTap: () {
                                controller.selectSize(size);
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                margin: const EdgeInsets.only(right: 10),
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: isSelected
                                      ? AppColors.purple
                                      : const Color(0xffF5F6FA),
                                ),
                                child: Center(
                                  child: Text(
                                    size,
                                    style: AppText.blackText.copyWith(
                                        color: isSelected
                                            ? AppColors.white
                                            : AppColors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            );
                          }).toList()),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Description',
                      style: AppText.blackText.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ReadMoreText(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into.',
                    style: AppText.grayText.copyWith(fontSize: 15),
                    colorClickableText: AppColors.black,
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Less',
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reviews',
                        style: AppText.blackText.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View All',
                          style: AppText.grayText.copyWith(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: CardReview(),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Total Price',
                              style: AppText.blackText.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'with VAT,SD',
                              style: AppText.grayText.copyWith(
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '\$${controller.product.price}',
                          style: AppText.blackText.copyWith(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                QBottomButton(text: 'Add to Cart', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/utils/colors.dart';
import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 350,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(controller.product.image ?? ''),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Get.back(),
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white),
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Icon(Icons.arrow_back_ios,
                                      color: AppColors.black),
                                ),
                              ),
                            ),
                            Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/mini-cart.png'),
                                  ),
                                )),
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
                    child: Container(
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
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
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
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/img/image-detail.png'))),
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
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(
                      child: SizedBox(
                        height: 70,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: controller.sizes.map((size) {
                              final isSelected =
                                  controller.selectedSize == size;
                              return GestureDetector(
                                onTap: () {
                                  controller.selectSize(size);
                                },
                                child: AnimatedContainer(
                                  duration: Duration(milliseconds: 500),
                                  margin: EdgeInsets.only(right: 10),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: isSelected
                                        ? AppColors.purple
                                        : Color(0xffF5F6FA),
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
                  )
                ],
              ),
            ),
          )),
    );
  }
}

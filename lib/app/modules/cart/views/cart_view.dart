import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../shared/widget/app_bar.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar('Cart'),
        body: const Center(
          child: Text(
            'CartView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

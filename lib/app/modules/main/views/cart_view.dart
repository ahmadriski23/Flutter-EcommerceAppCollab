import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CartView extends GetView {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'CartView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

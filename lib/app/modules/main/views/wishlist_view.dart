import 'package:flutter/material.dart';

import 'package:get/get.dart';

class WishlistView extends GetView {
  const WishlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'WishlistView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

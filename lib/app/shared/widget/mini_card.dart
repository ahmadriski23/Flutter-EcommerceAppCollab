import 'package:flutter/material.dart';

class MiniCart extends StatelessWidget {
  final VoidCallback onTap;
  MiniCart({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/mini-cart.png'),
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QBackButton extends StatelessWidget {
  const QBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Get.back(),
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(245, 246, 250, 1),
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

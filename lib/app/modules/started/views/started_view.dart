import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/started_controller.dart';

class StartedView extends GetView<StartedController> {
  const StartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(245, 246, 250, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Let\'s Get Started',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

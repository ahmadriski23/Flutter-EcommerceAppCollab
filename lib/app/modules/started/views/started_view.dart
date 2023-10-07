import 'package:ecommerce_app/app/modules/started/widget/account_button.dart';
import 'package:ecommerce_app/app/shared/utils/colors.dart';
import 'package:ecommerce_app/app/shared/utils/text.dart';
import 'package:ecommerce_app/app/shared/widget/back_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../controllers/started_controller.dart';
import '../../../shared/widget/bottom_button.dart';

class StartedView extends GetView<StartedController> {
  const StartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const QBackButton(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text('Let\'s Get Started',
                    style: AppText.blackText
                        .copyWith(fontSize: 28, fontWeight: FontWeight.w600)),
              ),
            ),
            const Spacer(),
            QAccountButton(
                onTap: () {},
                icon: MdiIcons.facebook,
                decorationColor: AppColors.facebook,
                text: 'Facebook'),
            const SizedBox(
              height: 10.0,
            ),
            QAccountButton(
              onTap: () {},
              icon: MdiIcons.twitter,
              decorationColor: AppColors.twitter,
              text: 'Twitter',
            ),
            const SizedBox(
              height: 10.0,
            ),
            QAccountButton(
                onTap: () {},
                icon: MdiIcons.google,
                decorationColor: AppColors.google,
                text: 'Google'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: AppText.grayText.copyWith(fontSize: 15),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  'Signin',
                  style: AppText.blackText.copyWith(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            const QBottomButton(text: 'Create an Account'),
          ],
        ),
      ),
    );
  }
}

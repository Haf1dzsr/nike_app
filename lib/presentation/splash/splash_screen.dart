import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

import 'controllers/splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_nike.png',
              width: 157,
              height: 54,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'NIKE',
              style: const AppTextStyle()
                  .splashTitle
                  .copyWith(color: AppColorStyle.whiteTitleColor),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

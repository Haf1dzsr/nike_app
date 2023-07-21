import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // image logo
        Positioned(
          height: Get.height,
          width: Get.width,
          top: Get.height * 0.05,
          child: Image.asset(
            'assets/images/onboarding_images/bg_logo_nike.png',
          ),
        ),

        // image smile m
        Positioned(
          width: 77,
          height: 77,
          top: Get.height * 0.0875,
          left: Get.width * 0.125,
          child: Image.asset(
            'assets/images/onboarding_images/smile_xl.png',
            width: 77,
            height: 77,
          ),
        ),

        // image circle
        Positioned(
          width: Get.width * 0.875,
          height: Get.height * 0.75,
          bottom: Get.height * 0.285,
          left: Get.width * 0.0625,
          child: Image.asset(
            'assets/images/onboarding_images/circle_line.png',
          ),
        ),

        // image shadow
        Positioned(
          width: Get.width * 0.55,
          height: Get.height,
          left: Get.width * 0.175,
          bottom: Get.height * 0.0375,
          child: Image.asset(
            'assets/images/onboarding_images/shadow_2.png',
            opacity: const AlwaysStoppedAnimation(100),
          ),
        ),

        // image shoe
        Positioned(
          width: Get.width,
          height: Get.height,
          bottom: Get.height * 0.17,
          child: Image.asset(
            'assets/images/onboarding_images/shoe_3.png',
          ),
        ),

        // Bottom Text
        Positioned(
          width: Get.width * 0.75,
          bottom: Get.height * 0.382,
          left: Get.width * 0.1125,
          child: Text(
            "You Have the Power To",
            maxLines: 2,
            style: const AppTextStyle().onboardBottomTitle,
            textAlign: TextAlign.center,
          ),
        ),

        // Bottom Desc Text
        Positioned(
          width: Get.width * 1,
          bottom: Get.height * 0.295,
          child: Text(
            "There Are Many Beautiful And Attractive Plants To Your Room",
            maxLines: 2,
            style: const AppTextStyle().onboardDesc,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

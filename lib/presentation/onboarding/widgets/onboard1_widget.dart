import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // image shoe
        Positioned(
          width: Get.width,
          height: Get.height,
          bottom: Get.height * 0.06,
          child: Image.asset(
            'assets/images/onboarding_images/shoe_1.png',
          ),
        ),

        // image logo
        Positioned(
          width: Get.width,
          height: Get.height,
          top: Get.height * 0.05,
          child: Image.asset(
            'assets/images/onboarding_images/bg_logo_nike.png',
          ),
        ),

        // image smile l
        Positioned(
          width: 45,
          height: 45,
          top: Get.height * 0.3,
          left: Get.width * 0.1,
          child: Image.asset(
            'assets/images/onboarding_images/smile_l.png',
            height: 45,
            width: 45,
            opacity: const AlwaysStoppedAnimation(100),
            // fit: BoxFit.none,
          ),
        ),

        // image phew right
        Positioned(
          width: 145,
          height: 127,
          bottom: Get.height * 0.19,
          right: Get.width * 0.115,
          child: Image.asset(
            'assets/images/onboarding_images/phew_right.png',
            width: 90,
            height: 54,
            opacity: const AlwaysStoppedAnimation(125),
          ),
        ),

        // image phew left
        Positioned(
          width: 145,
          height: 127,
          bottom: Get.height * 0.125,
          child: Image.asset(
            'assets/images/onboarding_images/phew_left.png',
            width: 90,
            height: 54,
            opacity: const AlwaysStoppedAnimation(125),
          ),
        ),

        // image cruel
        Positioned(
          width: 134,
          height: 18,
          top: Get.height * 0.175,
          left: Get.width * 0.325,
          child: Image.asset(
            'assets/images/onboarding_images/cruel.png',
          ),
        ),

        // image cling
        Positioned(
          width: 27,
          height: 30,
          top: Get.height * 0.05,
          left: Get.width * 0.175,
          child: Image.asset(
            'assets/images/onboarding_images/cling.png',
          ),
        ),

        // Welcome Text
        Positioned(
          width: Get.width * 0.75,
          top: Get.height * 0.075,
          left: Get.width * 0.135,
          child: Text(
            'WELCOME TO NIKE',
            maxLines: 2,
            style: const AppTextStyle().onboardTopTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

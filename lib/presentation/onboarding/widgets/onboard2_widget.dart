import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class Onboard2 extends StatelessWidget {
  const Onboard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // image phew right
        Positioned(
          width: 110,
          height: 74,
          top: Get.height * 0.105,
          left: Get.width * 0.025,
          child: Image.asset(
            'assets/images/onboarding_images/phew_solid.png',
            width: 90,
            height: 54,
          ),
        ),

        // image smile m
        Positioned(
          width: 45,
          height: 45,
          top: Get.height * 0.0875,
          right: Get.width * 0.0625,
          child: Image.asset(
            'assets/images/onboarding_images/smile_l.png',
            width: 90,
            height: 54,
          ),
        ),

        // image shadow
        Positioned(
          width: Get.width * 0.55,
          height: Get.height,
          left: Get.width * 0.1,
          bottom: Get.height * 0.045,
          child: Image.asset(
            'assets/images/onboarding_images/shadow_2.png',
            opacity: const AlwaysStoppedAnimation(25),
          ),
        ),

        // image shoe
        Positioned(
          width: Get.width * 0.925,
          height: Get.height * 1,
          bottom: Get.height * 0.2,
          child: Image.asset(
            'assets/images/onboarding_images/shoe_2.png',
          ),
        ),

        // image logo
        Positioned(
          height: Get.height,
          width: Get.width,
          top: Get.height * 0.05,
          child: Image.asset(
            'assets/images/onboarding_images/bg_logo_nike.png',
          ),
        ),

        // Bottom Text
        Positioned(
          width: Get.width * 1,
          bottom: Get.height * 0.382,
          child: Text(
            "Let's Start Journey With Nike",
            maxLines: 2,
            style: const AppTextStyle().onboardBottomTitle,
            textAlign: TextAlign.center,
          ),
        ),

        // Bottom Desc Text
        Positioned(
          width: Get.width * 0.75,
          bottom: Get.height * 0.295,
          left: Get.width * 0.1125,
          child: Text(
            "Smart, Gorgeous & Fashionable Collection Explore Now",
            maxLines: 2,
            style: const AppTextStyle().onboardDesc,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

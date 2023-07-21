import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          height: Get.height,
          width: Get.width,
          top: Get.height * 0.05,
          child: Image.asset(
            'assets/images/onboarding_images/bg_logo_nike.png',
            // fit: BoxFit.none,
          ),
        ),
      ],
    );
  }
}

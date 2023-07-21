import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';

import 'controllers/onboarding_controller.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  final OnboardingController controller = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.onboardBgColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: Obx(
                () => PageView.builder(
                  controller: controller.pageController.value,
                  itemCount: controller.onboardingScreens.length,
                  onPageChanged: (int index) {
                    controller.currentIndex.value = index;
                  },
                  itemBuilder: (context, index) {
                    return controller.onboardingScreens[index];
                    
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

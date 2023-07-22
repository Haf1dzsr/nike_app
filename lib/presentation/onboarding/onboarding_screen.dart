// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

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
        child: Stack(
          children: [
            Positioned(
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

            // Dot
            Obx(
              () => Positioned(
                bottom: controller.currentIndex == 0
                    ? Get.height * 0.34
                    : Get.height * 0.225,
                width: Get.width - 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.onboardingScreens.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: 6,
                      width: controller.currentIndex == index ? 42 : 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: controller.currentIndex.value == index
                            ? AppColorStyle.whiteColor
                            : controller.currentIndex.value > index
                                ? AppColorStyle.whiteColor
                                : AppColorStyle.selectedBoardColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Button
            Obx(
              () => Positioned(
                bottom: Get.height * 0.0125,
                width: Get.width - 0.06,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: Get.width,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        backgroundColor: const MaterialStatePropertyAll(
                          AppColorStyle.whiteTitleColor,
                        ),
                      ),
                      onPressed: () {
                        controller.currentIndex != 2
                            ? controller.pageController.value.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear)
                            : Get.toNamed(Routes.login);
                      },
                      child: Text(
                        controller.currentIndex == 0 ? 'Get Started' : 'Next',
                        style: const AppTextStyle().buttonTitle.copyWith(
                              color: AppColorStyle.blackTitleColor,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';

class ReusableBackButtonWhite extends StatelessWidget {
  const ReusableBackButtonWhite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 10,
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 2),
        width: 32,
        height: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColorStyle.whiteColor,
        ),
        child: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 12,
            color: AppColorStyle.blackTitleColor,
          ),
        ),
      ),
    );
  }
}

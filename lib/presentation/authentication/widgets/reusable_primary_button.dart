import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class ReusablePrimaryButton extends StatelessWidget {
  const ReusablePrimaryButton({
    super.key,
    required this.buttonTitle,
    this.destinationWidget,
    this.alertDialog,
  });

  final String buttonTitle;
  final String? destinationWidget;
  final AlertDialog? alertDialog;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            AppColorStyle.primaryColor,
          ),
        ),
        onPressed: () {
          alertDialog == null
              ? Get.offAllNamed(destinationWidget!)
              : Get.dialog(alertDialog!).then(
                  (value) => Get.offNamed(destinationWidget!),
                );
        },
        child: Text(
          buttonTitle,
          style: const AppTextStyle().buttonTitle.copyWith(
                color: AppColorStyle.whiteColor,
              ),
        ),
      ),
    );
  }
}

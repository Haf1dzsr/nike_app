import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class BottomCartWidget extends StatelessWidget {
  const BottomCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 36),
        color: AppColorStyle.whiteColor,
        width: Get.width,
        height: 230,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(color: AppColorStyle.greySubtitleColor),
                ),
                Text(
                  'Rp 1.753.950',
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(color: AppColorStyle.blackTitleColor),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery',
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(color: AppColorStyle.greySubtitleColor),
                ),
                Text(
                  'Rp 60.200',
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(color: AppColorStyle.blackTitleColor),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SvgPicture.asset('assets/icons/divider.svg'),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Cost',
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(color: AppColorStyle.blackTitleColor),
                ),
                Text(
                  'Rp 1.814.150',
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(color: AppColorStyle.primaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: Get.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(13),
                    ),
                  ),
                  backgroundColor: AppColorStyle.primaryColor,
                ),
                onPressed: () {
                  Get.toNamed(Routes.checkout);
                },
                child: Text(
                  'Checkout',
                  style: const AppTextStyle().bodyBottomTitle.copyWith(
                        fontSize: 14,
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

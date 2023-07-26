// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class ItemCartWidget extends StatelessWidget {
  ItemCartWidget({
    required this.imagePath,
    required this.itemName,
    required this.price,
    this.index = 0,
    super.key,
  });

  final String imagePath;
  final String itemName;
  final String price;
  int? index;

  GlobalKey<FormState> swipeKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SwipeActionCell(
      key: swipeKey,
      leadingActions: [
        SwipeAction(
          onTap: (handler) {},
          color: AppColorStyle.greyButtonColor,
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColorStyle.primaryColor,
            ),
            width: 58,
            height: 104,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Iconify(
                  Ic.twotone_plus,
                  color: AppColorStyle.whiteColor,
                ),
                Text(
                  '1',
                  style: const AppTextStyle().buttonTitle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColorStyle.whiteColor,
                      ),
                ),
                const Iconify(
                  Ic.baseline_minus,
                  color: AppColorStyle.whiteColor,
                ),
              ],
            ),
          ),
        ),
      ],
      trailingActions: [
        SwipeAction(
          color: AppColorStyle.greyButtonColor,
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColorStyle.favoritedColor,
            ),
            width: 58,
            height: 104,
            child: const OverflowBox(
              maxWidth: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.delete_outline,
                    color: AppColorStyle.whiteColor,
                  ),
                ],
              ),
            ),
          ),
          onTap: (handler) {},
        ),
      ],
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        width: Get.width,
        height: 104,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColorStyle.whiteColor,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 28),
              height: 85,
              width: 87,
              decoration: BoxDecoration(
                  color: AppColorStyle.greyButtonColor,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(imagePath),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: const AppTextStyle()
                      .bodyLabelTitle
                      .copyWith(fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  price,
                  style: const AppTextStyle().bodySubtitle.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColorStyle.blackTitleColor,
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

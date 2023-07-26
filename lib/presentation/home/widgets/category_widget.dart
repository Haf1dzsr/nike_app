// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/home/controllers/home_controller.dart';

class CategoryWidget extends GetView<HomeController> {
  CategoryWidget({
    super.key,
    required this.category,
    this.isSelected = false,
    this.index = 0,
  });
  final String category;
  bool isSelected;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: controller.categoryList[index].isSelected
            ? AppColorStyle.primaryColor
            : AppColorStyle.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        category,
        style: const AppTextStyle().bodyLabelSubtitle.copyWith(
              color: controller.categoryList[index].isSelected
                  ? AppColorStyle.whiteColor
                  : AppColorStyle.blackTitleColor,
            ),
      ),
    );
  }
}

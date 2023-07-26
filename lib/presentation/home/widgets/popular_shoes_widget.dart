// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/home/controllers/home_controller.dart';

class PopularShoesWidget extends GetView<HomeController> {
  PopularShoesWidget({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
    this.index = 0,
    this.isFavorited,
  });

  final String imagePath;
  final String name;
  final String price;
  int index;
  late bool? isFavorited;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.detail),
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      controller.favoritedStatus(index);
                    },
                    child: Iconify(
                      controller.shoesList[index].isFavorited == true
                          ? Mdi.cards_heart
                          : Mdi.cards_heart_outline,
                      color: controller.shoesList[index].isFavorited == true
                          ? AppColorStyle.favoritedColor
                          : null,
                      size: 18,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      imagePath,
                      width: 126,
                      height: 90,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'Best Seller',
                    style: const AppTextStyle().bodyLabelSubtitle.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColorStyle.primaryColor,
                        ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    name,
                    style: const AppTextStyle().bodyLabelTitle.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColorStyle.greySubtitleColor,
                        ),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    price,
                    style: const AppTextStyle().phoneNumberText.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 34,
                  width: 34,
                  decoration: const BoxDecoration(
                    color: AppColorStyle.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(6),
                    child: Iconify(
                      Tabler.plus,
                      color: AppColorStyle.whiteColor,
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

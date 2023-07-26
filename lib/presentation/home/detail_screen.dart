import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button_white.dart';
import 'package:nike_app/presentation/home/widgets/detail_product_pic_widget.dart';

import 'controllers/detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
  DetailScreen({Key? key}) : super(key: key);

  final DetailController detailController = Get.put(DetailController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.greyButtonColor,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        leadingWidth: 66,
        backgroundColor: AppColorStyle.greyButtonColor,
        leading: const ReusableBackButtonWhite(),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            'Sneaker Shop',
            style: const AppTextStyle().appBarTitle.copyWith(
                  color: AppColorStyle.blackTitleColor,
                ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: Image.asset(
              'assets/icons/icon_bag_appbar.png',
              width: 44,
              height: 44,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Text(
                      'Nike Air Max 270\nEssential',
                      style: const AppTextStyle()
                          .bodyTitle
                          .copyWith(fontSize: 26, height: 0),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Men's Shoes",
                  style: const AppTextStyle().bodyLabelTitle.copyWith(
                        color: AppColorStyle.greySubtitleColor,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Rp 799.900',
                  style: const AppTextStyle()
                      .bodyTitle
                      .copyWith(fontSize: 26, height: 0),
                ),
                const SizedBox(
                  height: 220,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProductPicWidget(
                        imagePath:
                            'assets/images/home_images/image_detail1.png',
                      ),
                      ProductPicWidget(
                        imagePath:
                            'assets/images/home_images/image_detail2.png',
                      ),
                      ProductPicWidget(
                        imagePath:
                            'assets/images/home_images/image_detail3.png',
                      ),
                      ProductPicWidget(
                        imagePath:
                            'assets/images/home_images/image_detail4.png',
                      ),
                      ProductPicWidget(
                        imagePath:
                            'assets/images/home_images/image_detail5.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Text(
                  "The Max Air 270 Unit Delivers Unrivaled, All-Day Comfort. The Sleek, Running-Inspired Design Roots You To Everything Nike.......",
                  style: const AppTextStyle().buttonLabelTitle.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColorStyle.greySubtitleColor,
                      ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, right: 20),
                      child: Text(
                        'Read More',
                        style: const AppTextStyle().buttonLabelTitle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColorStyle.primaryColor,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: Get.height * 0.4,
              child: SizedBox(
                width: Get.width,
                child: Image.asset(
                  'assets/images/home_images/image_detail.png',
                  width: 350,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: Get.height * 0.45,
              child: SizedBox(
                width: Get.width,
                child: Image.asset(
                  'assets/images/home_images/detail_slider.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: Get.height * 0.06,
              child: SizedBox(
                width: Get.width * 0.87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: AppColorStyle.whiteSubtitleColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/icon_heart.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed(Routes.cart),
                      child: Container(
                        height: 50,
                        width: 208,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: AppColorStyle.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/icon_cart.svg',
                              width: 24,
                              height: 24,
                              fit: BoxFit.none,
                              color: AppColorStyle.whiteColor,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              'Add To Cart',
                              style: const AppTextStyle()
                                  .bodyTextButton
                                  .copyWith(
                                      fontSize: 14,
                                      color: AppColorStyle.whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

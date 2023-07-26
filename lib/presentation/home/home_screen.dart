// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/home/navbar_screen.dart';
import 'package:nike_app/presentation/home/widgets/category_widget.dart';
import 'package:nike_app/presentation/home/widgets/popular_shoes_widget.dart';

import 'controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return AnimatedContainer(
          duration: const Duration(seconds: 1),
          transform: Matrix4.translationValues(
              controller.xOffset, controller.yOffset, 0)
            ..scale(controller.isDrawerOpen ? 0.75 : 1.00)
            ..rotateZ(controller.isDrawerOpen ? 50 : 0),
          decoration: BoxDecoration(
            color: AppColorStyle.greyButtonColor,
            borderRadius:
                BorderRadius.circular(controller.isDrawerOpen ? 25 : 0),
          ),
          child: Stack(
            children: [
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // AppBar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            controller.isDrawerOpen
                                ? InkWell(
                                    onTap: () {
                                      controller.unTapped();
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/Hamburger.svg'),
                                  )
                                : InkWell(
                                    onTap: () {
                                      controller.tapped();
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/icon_drawer.svg'),
                                  ),
                            Image.asset(
                              'assets/images/home_images/title_explore.png',
                              width: 120,
                              height: 70,
                            ),
                            Image.asset(
                              'assets/icons/icon_bag_appbar.png',
                              width: 44,
                              height: 44,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 19),

                      // Search Button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 52,
                              width: Get.width * 0.72,
                              decoration: BoxDecoration(
                                color: AppColorStyle.whiteColor,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColorStyle.greyLabelColor
                                        .withOpacity(0.1),
                                    spreadRadius: 0.5,
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  const Iconify(
                                    Ri.search_line,
                                    color: AppColorStyle.greySubtitleColor,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Looking for shoes',
                                        hintStyle:
                                            const AppTextStyle().bodyTextButton,
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              width: 52,
                              decoration: BoxDecoration(
                                color: AppColorStyle.primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(14),
                                child: Iconify(
                                  Lucide.sliders_horizontal,
                                  color: AppColorStyle.whiteTitleColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Select Category
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Select Category',
                          style: const AppTextStyle()
                              .dialogTitle
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),

                      const SizedBox(height: 16),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 45,
                          child: GetBuilder<HomeController>(
                            builder: (controller) {
                              return ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.categoryList.length,
                                itemBuilder: (context, index) {
                                  CategoryWidget category =
                                      controller.categoryList[index];
                                  return GestureDetector(
                                    onTap: () =>
                                        controller.changeContainerColor(index),
                                    child: CategoryWidget(
                                      category: category.category,
                                      index: index,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Popular Shoes
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Shoes',
                              style: const AppTextStyle().bodyLabelTitle,
                            ),
                            Text(
                              'See all',
                              style: const AppTextStyle()
                                  .buttonLabelTitle
                                  .copyWith(
                                    fontSize: 12,
                                    color: AppColorStyle.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          height: 205,
                          child: GetBuilder<HomeController>(
                            builder: (controller) {
                              return ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.shoesList.length,
                                itemBuilder: (context, index) {
                                  PopularShoesWidget shoes =
                                      controller.shoesList[index];
                                  return PopularShoesWidget(
                                    index: index,
                                    imagePath: shoes.imagePath,
                                    name: shoes.name,
                                    price: shoes.price.toString(),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),

                      const SizedBox(height: 24),

                      // New Arrivals
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Arrivals',
                              style: const AppTextStyle()
                                  .bodyLabelTitle
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'See all',
                              style: const AppTextStyle()
                                  .buttonLabelTitle
                                  .copyWith(
                                    fontSize: 12,
                                    color: AppColorStyle.primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),

                      // discount banner
                      Image.asset(
                        'assets/images/home_images/new_arrival.png',
                        width: Get.width,
                        height: 110,
                      ),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: NavbarScreen(),
              ),
            ],
          ),
        );
      },
    );
  }
}

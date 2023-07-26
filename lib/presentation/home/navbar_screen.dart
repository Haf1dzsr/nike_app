import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/presentation/home/widgets/navbar_widget.dart';

import 'controllers/navbar_controller.dart';

class NavbarScreen extends GetView<NavbarController> {
  const NavbarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            width: Get.width,
            height: 80,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(Get.width, 80),
                  painter: BNBPainter(),
                ),
                Center(
                  heightFactor: 0.55,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: AppColorStyle.primaryColor.withOpacity(0.2),
                          blurRadius: 2,
                          spreadRadius: 3,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: FloatingActionButton(
                      onPressed: () => Get.toNamed(Routes.cart),
                      shape: const CircleBorder(),
                      backgroundColor: AppColorStyle.primaryColor,
                      child: SvgPicture.asset(
                        'assets/icons/icon_cart.svg',
                        color: AppColorStyle.whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // home
                      IconButton(
                        onPressed: () => Get.to(Routes.home),
                        icon: SvgPicture.asset(
                          'assets/icons/icon_home.svg',
                          color: AppColorStyle.primaryColor,
                        ),
                      ),

                      // favorited
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/icon_love.svg',
                        ),
                      ),

                      SizedBox(
                        width: Get.width * 0.20,
                      ),

                      // notif
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/icon_notif.svg',
                        ),
                      ),

                      // profile
                      IconButton(
                        onPressed: () => Get.toNamed(Routes.profile),
                        icon: SvgPicture.asset(
                          'assets/icons/icon_account.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

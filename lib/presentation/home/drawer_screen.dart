import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/home/widgets/item_list_widget.dart';

class DrawerScreen extends GetView<DrawerController> {
  const DrawerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.primaryColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/profile_images/profile_edit.png',
                width: 96,
                height: 96,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Lorem Ipsum',
                style: const AppTextStyle().bodyLabelInfo.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColorStyle.whiteColor),
              ),
              const SizedBox(
                height: 55,
              ),
              ItemListWidget(
                iconPath: 'assets/icons/icon_account.svg',
                title: 'Profile',
                destinationRoute: () => Get.toNamed(Routes.profile),
              ),
              const ItemListWidget(
                iconPath: 'assets/icons/icon_bag.svg',
                title: 'My Cart',
              ),
              const ItemListWidget(
                iconPath: 'assets/icons/icon_favorite.svg',
                title: 'Favorite',
              ),
              const ItemListWidget(
                iconPath: 'assets/icons/icon_truck.svg',
                title: 'Orders',
              ),
              const ItemListWidget(
                iconPath: 'assets/icons/icon_notif.svg',
                title: 'Notifications',
              ),
              const ItemListWidget(
                iconPath: 'assets/icons/icon_setting.svg',
                title: 'Settings',
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                color: AppColorStyle.whiteColor,
                thickness: 2,
              ),
              const SizedBox(
                height: 30,
              ),
              ItemListWidget(
                iconPath: 'assets/icons/icon_signout.svg',
                title: 'Sign Out',
                destinationRoute: () => Get.offAllNamed(Routes.login),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

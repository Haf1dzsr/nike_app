import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button_white.dart';
import 'package:nike_app/presentation/cart/widgets/bottom_cart_widget.dart';
import 'package:nike_app/presentation/cart/widgets/item_cart_widget.dart';

import 'controllers/cart_controller.dart';

class CartScreen extends GetView<CartController> {
  CartScreen({Key? key}) : super(key: key);

  @override
  final CartController controller = Get.put(CartController());
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
            'My Cart',
            style: const AppTextStyle().appBarTitle.copyWith(
                  color: AppColorStyle.blackTitleColor,
                ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '3 Item',
                    style: const AppTextStyle().bodySubtitle.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColorStyle.blackTitleColor,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: GetBuilder<CartController>(
                    builder: (controller) => ListView.builder(
                      itemCount: controller.cartItems.length,
                      itemBuilder: (context, index) {
                        final item = controller.cartItems[index];
                        return ItemCartWidget(
                          imagePath: item.imagePath,
                          itemName: item.itemName,
                          price: item.price,
                          index: index,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const BottomCartWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button_white.dart';

import 'controllers/checkout_controller.dart';

class CheckoutScreen extends GetView<CheckoutController> {
  const CheckoutScreen({Key? key}) : super(key: key);
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
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  Container(
                    height: 460,
                    padding: const EdgeInsets.only(top: 16, left: 20),
                    decoration: const BoxDecoration(
                      color: AppColorStyle.whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Text(
                          'Contact Information',
                          style: const AppTextStyle().bodyBottomTitle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20, right: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColorStyle.greyButtonColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: SvgPicture.asset(
                                    'assets/icons/icon_message.svg'),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'loremipsum@gmail.com',
                                  style: const AppTextStyle()
                                      .buttonLabelTitle
                                      .copyWith(
                                        color: AppColorStyle.blackTitleColor,
                                      ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Email',
                                  style: const AppTextStyle()
                                      .buttonLabelTitle
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            IconButton(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 10),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/icons/icon_edit.svg'),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20, right: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColorStyle.greyButtonColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: SvgPicture.asset(
                                    'assets/icons/icon_message.svg'),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '+62821-39-488-953',
                                  style: const AppTextStyle()
                                      .buttonLabelTitle
                                      .copyWith(
                                        color: AppColorStyle.blackTitleColor,
                                      ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Phone',
                                  style: const AppTextStyle()
                                      .buttonLabelTitle
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            IconButton(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 10),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/icons/icon_edit.svg'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Address',
                          style: const AppTextStyle().buttonTitle.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rungkut, Kota Surabaya, Jawa Timur',
                              style: const AppTextStyle()
                                  .bodyLabelSubtitle
                                  .copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColorStyle.greySubtitleColor,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/images_map.png',
                            height: 101,
                            width: 295,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Payment Method',
                          style: const AppTextStyle().buttonTitle.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20, right: 20),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColorStyle.greyButtonColor,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image.asset(
                                    'assets/images/images_mandiri.png'),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'Lorem Ipsum',
                                  style: const AppTextStyle()
                                      .buttonTitle
                                      .copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                ),
                                Text(
                                  '**** **** 0696 4629',
                                  style: const AppTextStyle()
                                      .bodySubtitle
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                            const Expanded(
                              child: SizedBox(),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColorStyle.greySubtitleColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // bottom
            Align(
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
                          Get.dialog(
                            AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              contentPadding: EdgeInsets.zero,
                              content: Container(
                                decoration: BoxDecoration(
                                    color: AppColorStyle.whiteColor,
                                    borderRadius: BorderRadius.circular(16)),
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 30, bottom: 40),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 134,
                                      width: 134,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(200),
                                        color: const Color(0xffDFEFFF),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(25),
                                        child: Image.asset(
                                            'assets/images/images_congrats.png'),
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    Text(
                                      'Your Payment Is Successful',
                                      style: const AppTextStyle()
                                          .bodyLabelTitle
                                          .copyWith(fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 16.0),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 30),
                                      child: SizedBox(
                                        height: 50,
                                        width: 240,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                AppColorStyle.primaryColor,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(13),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            Get.back();
                                            Get.back();
                                            Get.back();
                                          },
                                          child: Text(
                                            'Back To Shopping',
                                            style: const AppTextStyle()
                                                .bodyLabelTitle,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
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
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/controllers/authentication_controller.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_primary_button.dart';
import 'package:nike_app/presentation/profile/widgets/reusable_profile_textformfield_widget.dart';

import 'controllers/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  final AuthenticationController authController =
      Get.put(AuthenticationController());
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.whiteColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 66,
        backgroundColor: AppColorStyle.whiteColor,
        leading: const ReusableBackButton(),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            'Profile',
            style: const AppTextStyle().appBarTitle.copyWith(
                  color: AppColorStyle.blackTitleColor,
                ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 11,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 11,
              ),
              Center(
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.editProfile),
                  child: Image.asset(
                    'assets/images/profile_images/profile_current.png',
                    width: 80,
                    height: 82,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),

              // Login Form
              Form(
                key: profileController.profileFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Form Name
                    ReusableProfileTextFormField(
                      formTitle: 'Your Name',
                      hintText: 'Lorem Ipsum',
                      formTextC: profileController.nameC,
                      formValidator: (value) =>
                          authController.validateName(value),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    // Form Email
                    ReusableProfileTextFormField(
                      formTitle: 'Email Address',
                      hintText: 'loremipsum@gmail.com',
                      formTextC: profileController.emailC,
                      formValidator: (value) =>
                          authController.validateEmail(value),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    // Form Password
                    ReusableProfileTextFormField(
                      formTitle: 'Password',
                      hintText: '••••••••',
                      formTextC: profileController.passC,
                      formValidator: (value) =>
                          authController.validatePassword(value),
                      obscureText:
                          authController.registPasswordObscureText.value,
                    ),

                    const SizedBox(
                      height: 8,
                    ),

                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () => Get.toNamed(Routes.forgotPassword),
                        child: Text(
                          'Recovery Password',
                          style: const AppTextStyle().bodyLabelSubtitle,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    const ReusablePrimaryButton(
                      buttonTitle: 'Save Now',
                      destinationWidget: Routes.home,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/controllers/authentication_controller.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button.dart';
import 'package:nike_app/presentation/profile/widgets/reusable_edit_profile_textformfield_widget.dart';

import 'controllers/edit_profile_controller.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);
  final AuthenticationController authController =
      Get.put(AuthenticationController());
  final EditProfileController editProfileController =
      Get.put(EditProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.whiteColor,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
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
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.only(top: 16, right: 20),
              child: Text(
                'Done',
                style: const AppTextStyle().appBarTrailingText,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 11,
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 11,
              ),
              Center(
                child: Image.asset(
                  'assets/images/profile_images/profile_current.png',
                  width: 96,
                  height: 96,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Lorem Ipsum',
                style: const AppTextStyle().bodyLabelInfo,
              ),
              const SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Change Profile',
                  style: const AppTextStyle().bodyTextButton.copyWith(
                        color: AppColorStyle.primaryColor,
                      ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),

              // Login Form
              Form(
                key: editProfileController.editProfileFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Form First Name
                    ReusableEditProfileTextFormField(
                      formTitle: 'First Name',
                      hintText: 'Lorem',
                      formTextC: editProfileController.firstNameC,
                      formValidator: (value) =>
                          authController.validateName(value),
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    // Form Last Name
                    ReusableEditProfileTextFormField(
                      formTitle: 'Last Name',
                      hintText: 'Ipsum',
                      formTextC: editProfileController.lastNameC,
                      formValidator: (value) =>
                          authController.validateName(value),
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    // Form Location
                    ReusableEditProfileTextFormField(
                      formTitle: 'Location',
                      hintText: 'Sidoarjo, Indonesia',
                      formTextC: editProfileController.locationC,
                      formValidator: (value) =>
                          authController.validateLoc(value),
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    // Form Password
                    ReusableEditProfileTextFormField(
                      formTitle: 'Mobile Number',
                      hintText: '+62  ⌄   82139488953',
                      formTextC: editProfileController.mobileNumberC,
                      formValidator: (value) =>
                          authController.validatePhone(value),
                      obscureText:
                          authController.registPasswordObscureText.value,
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

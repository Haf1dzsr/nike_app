import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/controllers/authentication_controller.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_primary_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_textformfield_widget.dart';
import 'controllers/login_controller.dart';

class LoginScreen extends GetView<AuthLoginController> {
  LoginScreen({Key? key}) : super(key: key);

  final AuthenticationController authController =
      Get.put(AuthenticationController());
  final AuthLoginController loginController = Get.put(AuthLoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.whiteColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 66,
        backgroundColor: AppColorStyle.whiteColor,
        leading: const ReusableBackButton(),
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
                child: Text(
                  'Hello Again!',
                  textAlign: TextAlign.center,
                  style: const AppTextStyle().bodyTitle,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'Fill Your Details Or Continue With\nSocial Media',
                  textAlign: TextAlign.center,
                  style: const AppTextStyle().bodySubtitle,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // Login Form
              Form(
                key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Form Email
                    ReusableTextFormField(
                      formTitle: 'Email Address',
                      hintText: 'loremipsum@gmail.com',
                      formTextC: loginController.emailC,
                      formValidator: (value) =>
                          authController.validateEmail(value),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    // Form Password
                    Obx(
                      () => ReusableTextFormField(
                        formTitle: 'Password',
                        hintText: '••••••••',
                        formTextC: loginController.passC,
                        formValidator: (value) =>
                            authController.validatePassword(value),
                        obscureText: authController.passwordObscureText.value,
                        suffixIcon: IconButton(
                          onPressed: () => authController.obscureTextStatus(
                              authController.passwordObscureText),
                          icon: Iconify(
                            authController.passwordObscureText.value
                                ? Mdi.eye_off_outline
                                : Mdi.eye_outline,
                            color: AppColorStyle.greyLabelColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
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
                      height: 24,
                    ),
                    const ReusablePrimaryButton(
                      buttonTitle: 'Sign In',
                      destinationWidget: Routes.dashboard,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: Get.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            AppColorStyle.greyButtonColor,
                          ),
                        ),
                        onPressed: () => Get.toNamed(''),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/icon_google.png',
                              width: 22,
                              height: 22,
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            Text(
                              'Sign In With Google',
                              style: const AppTextStyle().buttonTitle.copyWith(
                                    color: AppColorStyle.blackTitleColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Get.height * 0.15,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 47,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New User? ',
                            style:
                                const AppTextStyle().bodyBottomTitle.copyWith(
                                      color: AppColorStyle.greyLabelColor,
                                    ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.register),
                            child: Text(
                              'Create Account',
                              style:
                                  const AppTextStyle().bodyBottomTitle.copyWith(
                                        color: AppColorStyle.blackTitleColor,
                                      ),
                            ),
                          ),
                        ],
                      ),
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

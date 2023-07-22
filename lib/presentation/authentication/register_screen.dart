import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/controllers/authentication_controller.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_primary_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_textformfield_widget.dart';

import 'controllers/register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  final AuthenticationController authController =
      Get.put(AuthenticationController());

  final RegisterController registController = Get.put(RegisterController());

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
                  'Register Account',
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
                key: controller.registerFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Form Name
                    ReusableTextFormField(
                      formTitle: 'Your Name',
                      hintText: 'xxxxxxxx',
                      formTextC: registController.nameRegistC,
                      formValidator: (value) =>
                          authController.validateName(value),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    // Form Email
                    ReusableTextFormField(
                      formTitle: 'Email Address',
                      hintText: 'loremipsum@gmail.com',
                      formTextC: registController.emailRegistC,
                      formValidator: (value) =>
                          authController.validateEmail(value),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    // Form Password
                    Obx(
                      () => ReusableTextFormField(
                        formTitle: 'Password',
                        hintText: '••••••••',
                        formTextC: registController.passRegistC,
                        formValidator: (value) =>
                            authController.validatePassword(value),
                        obscureText:
                            authController.registPasswordObscureText.value,
                        suffixIcon: IconButton(
                          onPressed: () => authController.obscureTextStatus(
                              authController.registPasswordObscureText),
                          icon: Iconify(
                            authController.registPasswordObscureText.value
                                ? Mdi.eye_off_outline
                                : Mdi.eye_outline,
                            color: AppColorStyle.greyLabelColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    const ReusablePrimaryButton(
                      buttonTitle: 'Sign Up',
                      destinationWidget: Routes.home,
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
                        onPressed: () => Get.offAllNamed('destinationWidget'),
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
                      height: Get.height * 0.055,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 47,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already Have Account? ',
                            style:
                                const AppTextStyle().bodyBottomTitle.copyWith(
                                      color: AppColorStyle.greyLabelColor,
                                    ),
                          ),
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Text(
                              'Log In',
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

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/controllers/authentication_controller.dart';
import 'package:nike_app/presentation/authentication/controllers/forgot_password_controller.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_primary_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_textformfield_widget.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  final AuthenticationController authController =
      Get.put(AuthenticationController());
  final ForgotPasswordController forgotPasswordController =
      Get.put(ForgotPasswordController());

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
                  'Enter Your Email Account To Reset\nYour Password',
                  textAlign: TextAlign.center,
                  style: const AppTextStyle().bodySubtitle,
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // Login Form
              Form(
                key: forgotPasswordController.forgotPassFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Form Password
                    ReusableTextFormField(
                      formTitle: 'Password',
                      hintText: 'xxxxxxxx',
                      formTextC: forgotPasswordController.passForgotC,
                      formValidator: (value) =>
                          authController.validatePassword(value),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    ReusablePrimaryButton(
                      buttonTitle: 'Reset Password',
                      destinationWidget: Routes.otpVerification,
                      alertDialog: AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        contentPadding: EdgeInsets.zero,
                        content: Container(
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: AppColorStyle.whiteColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 30,
                            bottom: 22,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: AppColorStyle.primaryColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/icons/icon_email.png',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                'Check Your Email',
                                style: const AppTextStyle().dialogTitle,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'We Have Send Password Recovery Code In Your Email',
                                style: const AppTextStyle().bodySubtitle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
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

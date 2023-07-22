import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';
import 'package:nike_app/presentation/authentication/controllers/authentication_controller.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_back_button.dart';
import 'package:nike_app/presentation/authentication/widgets/reusable_primary_button.dart';
import 'package:pinput/pinput.dart';
import 'controllers/otp_verification_controller.dart';

class OtpVerificationScreen extends GetView<OtpVerificationController> {
  OtpVerificationScreen({Key? key}) : super(key: key);

  final AuthenticationController authController =
      Get.put(AuthenticationController());
  final OtpVerificationController otpVerificationController =
      Get.put(OtpVerificationController());
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
                  'OTP Verification',
                  textAlign: TextAlign.center,
                  style: const AppTextStyle().bodyTitle,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'Please Check Your Email To See The\nVerification Code',
                  textAlign: TextAlign.center,
                  style: const AppTextStyle().bodySubtitle,
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              // Login Form
              Form(
                key: otpVerificationController.otpFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OTP Code',
                      textAlign: TextAlign.center,
                      style: const AppTextStyle().bodyLabelHead,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // Form OTP
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        controller: otpVerificationController.otpC,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        length: 4,
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        preFilledWidget: Text(
                          '',
                          style: const AppTextStyle().bodyLabelValue,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    const ReusablePrimaryButton(
                      buttonTitle: 'verify',
                      destinationWidget: Routes.login,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Resend code to',
                          style: const AppTextStyle().bodyLabelSubtitle,
                        ),
                        Obx(
                          () => Text(
                            otpVerificationController.timerValue.value,
                            style: const AppTextStyle().bodyLabelSubtitle,
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
      ),
    );
  }
}

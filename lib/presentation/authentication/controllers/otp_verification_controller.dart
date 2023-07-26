import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';

class OtpVerificationController extends GetxController {
  GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

  // TextEditingController
  final TextEditingController otpC = TextEditingController();

  // Timer
  Rx<String> timerValue = "00:30".obs;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    const duration = Duration(seconds: 1);
    Timer.periodic(
      duration,
      (timer) {
        int seconds = int.parse(timerValue.value.split(':')[1]);
        if (seconds > 0) {
          seconds--;
          timerValue.value = "00:${seconds.toString().padLeft(2, '0')}";
        } else {
          timer.cancel();
          Get.offAllNamed(Routes.login);
        }
      },
    );
  }
}

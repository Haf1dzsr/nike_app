import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  GlobalKey<FormState> forgotPassFormKey = GlobalKey<FormState>();

  // TextEditingController
  final TextEditingController passForgotC = TextEditingController();
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  // TextEditingController
  final TextEditingController nameRegistC = TextEditingController();
  final TextEditingController emailRegistC = TextEditingController();
  final TextEditingController passRegistC = TextEditingController();
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  GlobalKey<FormState> profileFormKey = GlobalKey<FormState>();

  // TextEditingController
  final TextEditingController nameC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();
}

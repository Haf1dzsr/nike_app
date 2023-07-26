import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  GlobalKey<FormState> editProfileFormKey = GlobalKey<FormState>();

  // TextEditingController
  final TextEditingController firstNameC = TextEditingController();
  final TextEditingController lastNameC = TextEditingController();
  final TextEditingController locationC = TextEditingController();
  final TextEditingController mobileNumberC = TextEditingController();
}

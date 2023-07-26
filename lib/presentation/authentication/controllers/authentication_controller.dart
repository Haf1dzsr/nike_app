import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  // validator

  /// name validator
  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return "The name can't be empty";
    }
    if (value.length < 2) {
      return 'Minimum 2 Characters';
    }
    return null;
  }

  /// email validator
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "The Email can't be empty";
    }
    const emailRegex =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    if (!RegExp(emailRegex).hasMatch(value)) {
      return 'Wrong email format';
    }

    return null;
  }

  /// password validator
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "The Password can't be empty";
    }
    if (value.length < 8) {
      return 'Minimum 8 Characters';
    }

    return null;
  }

  /// otp validator
  String? validateOTP(String? value) {
    if (value == null || value.isEmpty) {
      return "The OTP Code can't be empty";
    }
    if (value.length < 2) {
      return 'Minimal 2 karakter';
    }
    return null;
  }

  /// name validator
  String? validateLoc(String? value) {
    if (value == null || value.isEmpty) {
      return "The name can't be empty";
    }
    if (value.length < 2) {
      return 'Minimum 2 Characters';
    }
    return null;
  }

  /// name validator
  String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return "The Phone Number can't be empty";
    }
    if (value.length < 2) {
      return 'Minimum 2 numbers';
    }
    return null;
  }

  // obscure text
  RxBool passwordObscureText = true.obs;
  RxBool registPasswordObscureText = true.obs;

  /// change obscure text status
  void obscureTextStatus(RxBool value) {
    value.value = !value.value;
  }
}

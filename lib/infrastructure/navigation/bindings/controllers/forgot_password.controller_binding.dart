import 'package:get/get.dart';

import '../../../../presentation/authentication/controllers/forgot_password_controller.dart';

class ForgotPasswordControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
      () => ForgotPasswordController(),
    );
  }
}

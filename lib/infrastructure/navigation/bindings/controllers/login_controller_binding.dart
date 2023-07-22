import 'package:get/get.dart';

import '../../../../presentation/authentication/controllers/login_controller.dart';

class LoginScreenControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthLoginController>(
      () => AuthLoginController(),
    );
  }
}

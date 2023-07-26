import 'package:get/get.dart';

import '../../../../presentation/authentication/controllers/register_controller.dart';

class RegisterControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}

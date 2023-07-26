import 'package:get/get.dart';

import '../../../../presentation/home/controllers/navbar_controller.dart';

class NavbarControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbarController>(
      () => NavbarController(),
    );
  }
}

import 'package:get/get.dart';

import '../../../../presentation/home/controllers/drawer_controller.dart';

class DrawerControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerController>(
      () => DrawerController(),
    );
  }
}

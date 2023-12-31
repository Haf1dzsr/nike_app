import 'package:get/get.dart';

import '../../../../presentation/home/controllers/dashboard_controller.dart';

class DashboardControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}

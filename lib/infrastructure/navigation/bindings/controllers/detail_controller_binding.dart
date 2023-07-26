import 'package:get/get.dart';

import '../../../../presentation/home/controllers/detail_controller.dart';

class DetailControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
  }
}

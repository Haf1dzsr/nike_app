import 'package:get/get.dart';

import '../../../../presentation/profile/controllers/profile_controller.dart';

class ProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}

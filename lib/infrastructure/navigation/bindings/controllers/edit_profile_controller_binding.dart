import 'package:get/get.dart';

import '../../../../presentation/profile/controllers/edit_profile_controller.dart';

class EditProfileControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(
      () => EditProfileController(),
    );
  }
}

import 'package:get/get.dart';

import '../../../../presentation/authentication/controllers/otp_verification_controller.dart';

class OtpVerificationControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpVerificationController>(
      () => OtpVerificationController(),
    );
  }
}

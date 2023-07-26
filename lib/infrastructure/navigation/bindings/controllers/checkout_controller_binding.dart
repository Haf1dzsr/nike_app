import 'package:get/get.dart';

import '../../../../presentation/cart/controllers/checkout_controller.dart';

class CheckoutControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(
      () => CheckoutController(),
    );
  }
}

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/navigation/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAllNamed(Routes.onboarding),
    );
  }
}

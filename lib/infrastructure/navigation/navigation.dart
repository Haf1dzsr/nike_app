import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.production
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.qas ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.splash,
      page: () => SplashScreen(),
      binding: SplashControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => OnboardingScreen(),
      binding: OnboardingControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.auth,
      page: () => const AuthenticationScreen(),
      binding: AuthenticationControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: LoginScreenControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterScreen(),
      binding: RegisterControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPasswordControllerBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: Routes.otpVerification,
      page: () => OtpVerificationScreen(),
      binding: OtpVerificationControllerBinding(),
      transition: Transition.cupertino,
    ),
  ];
}

class Routes {
  static Future<String> get initialRoute async {
    return splash;
  }

  static const auth = '/authentication';
  static const forgotPassword = '/forgot-password';
  static const home = '/home';
  static const login = '/login-screen';
  static const onboarding = '/onboarding';
  static const register = '/register';
  static const splash = '/splash';
  static const otpVerification = '/otp-verification';
}

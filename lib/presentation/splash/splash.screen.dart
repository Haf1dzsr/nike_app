import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  SplashScreen({Key? key}) : super(key: key);

  @override
  final SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SplashScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

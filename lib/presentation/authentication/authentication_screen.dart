import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/authentication_controller.dart';

class AuthenticationScreen extends GetView<AuthenticationController> {
  const AuthenticationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthenticationScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AuthenticationScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/presentation/home/drawer_screen.dart';
import 'package:nike_app/presentation/home/home_screen.dart';

import 'controllers/dashboard_controller.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStyle.greyButtonColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}

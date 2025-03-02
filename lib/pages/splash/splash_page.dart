import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(SplashController());
    return const Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }
}
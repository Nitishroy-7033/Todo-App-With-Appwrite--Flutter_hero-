import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/controllers/auth_controller.dart';
import 'package:todo_with_app_write/widgets/footer_credit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      bottomSheet: const FooterCredit(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                authController.logOutUser();
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
        centerTitle: true,
        title: Text("Homepage"),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

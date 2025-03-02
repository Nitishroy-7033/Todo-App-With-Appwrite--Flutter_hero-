import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/controllers/auth_controller.dart';
import 'package:todo_with_app_write/widgets/primary_button.dart';

import '../../widgets/footer_credit.dart';
import 'login_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    final AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create an account"),
      ),
        bottomSheet: const FooterCredit(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  radius: 80,
                  child: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.surface,
                    size: 100,
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                  hintText: "Full Name", prefixIcon: Icon(Icons.person)),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  hintText: "Email id",
                  prefixIcon: Icon(Icons.alternate_email)),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                  hintText: "Password", prefixIcon: Icon(Icons.password)),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => authController.isLoading.value
                      ? CircularProgressIndicator()
                      : PrimaryButton(
                          text: "Create accout",
                          onTap: () {
                            authController.createUserWithEmailPassword(
                              _nameController.text,
                              _emailController.text,
                              _passwordController.text,
                            );
                          },
                          bgColor: Theme.of(context).colorScheme.onSurface),
                )
              ],
            ),
            const SizedBox(height: 20),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                InkWell(
                  onTap: () {
                    Get.to(const LoginPage());
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18,
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

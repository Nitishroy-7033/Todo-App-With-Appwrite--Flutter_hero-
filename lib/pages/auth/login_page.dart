import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/controllers/auth_controller.dart';
import 'package:todo_with_app_write/pages/auth/singup_page.dart';
import 'package:todo_with_app_write/widgets/footer_credit.dart';
import 'package:todo_with_app_write/widgets/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      bottomSheet: const FooterCredit(),
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(height: 40),
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
            SizedBox(height: 40),
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
                          text: "Login",
                          onTap: () {
                            authController.loginWithEmailAndPassword(
                              _emailController.text,
                              _passwordController.text,
                            );
                          },
                          bgColor: Theme.of(context).colorScheme.onSurface),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    authController.getLoginUserDetails();
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.secondary),
                    foregroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.onSurface),
                  ),
                  child: const Text("Get User details"),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    authController.logOutUser();
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.secondary),
                    foregroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.onSurface),
                  ),
                  child: const Text("Logout"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    authController.loginWithGoogle();
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                    foregroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                  child: const Text("Login with Google"),
                ),
               
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                InkWell(
                  onTap: () {
                    Get.to(SignupPage());
                  },
                  child: Text(
                    "Create an account",
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

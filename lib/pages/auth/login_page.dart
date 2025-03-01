import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/pages/auth/singup_page.dart';
import 'package:todo_with_app_write/widgets/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email id",
                prefixIcon: Icon(Icons.alternate_email)
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password)
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(
                    text: "Login",
                    onTap: () {},
                    bgColor: Theme.of(context).colorScheme.onSurface)
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Don't have an account? "),
              InkWell(
                onTap: (){
                    Get.to(SignupPage());
                },
                child: Text("Create an account",style: TextStyle(
                
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.onPrimaryContainer
                ),),
              )
            ],)
          ],
        ),
      ),
    );
  }
}

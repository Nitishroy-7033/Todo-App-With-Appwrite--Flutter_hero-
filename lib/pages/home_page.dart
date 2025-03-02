import 'package:flutter/material.dart';
import 'package:todo_with_app_write/widgets/footer_credit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomSheet: const FooterCredit(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Homepage"),
      ),
      body: Column(children: [],),
    );
  }
}
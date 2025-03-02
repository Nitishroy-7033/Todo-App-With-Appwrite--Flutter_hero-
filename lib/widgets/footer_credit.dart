import 'package:flutter/material.dart';

class FooterCredit extends StatelessWidget {
  const FooterCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 34, 127, 127)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Made by ❤️ Flutter hero",
              style: TextStyle(
                  color: Color.fromARGB(255, 109, 198, 198),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
  }
}
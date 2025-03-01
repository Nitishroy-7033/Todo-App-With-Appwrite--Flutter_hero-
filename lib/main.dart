import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:todo_with_app_write/core/app_theme.dart';
import 'package:todo_with_app_write/pages/home_page.dart';
import 'package:todo_with_app_write/services/app_write_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppWriteService().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo app with Appwrite',
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: HomePage(),
    );
  }
}

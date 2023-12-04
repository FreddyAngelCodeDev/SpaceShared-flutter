import 'package:flutter/material.dart';
import 'package:space_code/Screens/login_page_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoginPageMain(),
      debugShowCheckedModeBanner: false,
    );
  }
}

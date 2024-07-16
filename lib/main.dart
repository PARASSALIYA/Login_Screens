import 'package:flutter/material.dart';
import 'package:login_page/loginpage/login_page.dart';
import 'package:login_page/routes/routes.dart';
import 'loginpage/login_page2.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.loginpage: (context) => const LoginPage(),
        Routes.loginpage2: (context) => const LoginPage2(),
      },
    );
  }
}

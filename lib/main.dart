import 'package:epic_ecommerce_app/pages/bottomnav.dart';
import 'package:epic_ecommerce_app/pages/home.dart';
import 'package:epic_ecommerce_app/pages/login.dart';
import 'package:epic_ecommerce_app/pages/productDetail.dart';
import 'package:flutter/material.dart';
import 'package:epic_ecommerce_app/pages/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffecefe8),
        brightness: Brightness.light,
      ),
      // home: const Onboarding(),
      home: const Login(),
    );
  }
}

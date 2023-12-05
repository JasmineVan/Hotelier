import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelier/views/guide_1_page.dart';
import 'package:hotelier/views/guide_2_page.dart';
import 'package:hotelier/views/guide_3_page.dart';
import 'package:hotelier/views/intro_page.dart';
import 'package:hotelier/views/signup_other_page.dart';
import 'package:hotelier/views/signup_page.dart';
import 'package:hotelier/views/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Hotelier",
      home:  IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupOtherController extends GetxController {

  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  void signupHandle() {
    Get.snackbar("Sign up information:",
        'Email: ${emailTextEditingController.text} , Password: ${passwordTextEditingController.text}');
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  final emailTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  void loginHandle(){
    Get.snackbar("Log in information:", 'Email: ${emailTextEditingController.text} , Password: ${passwordTextEditingController.text}');
  }
}
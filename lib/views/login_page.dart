import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelier/views/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPagePageState();
}

class _LoginPagePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: maxWidth / 20, right: maxWidth / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Welcome back",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 32.0,
                    )),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: maxHeight/20, bottom: maxHeight/24),
              child: SizedBox(
                width: maxWidth * 90/100,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    labelText: 'Email',
                    counterText: '',
                  ),
                  onTap: () {},
                  maxLength: 50,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            SizedBox(
              width: maxWidth * 90/100,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Password',
                  counterText: '',
                ),
                onTap: () {},
                maxLength: 16,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: maxHeight/100, bottom: maxHeight/24),
                  child: Row(
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
                        value: true,
                        tristate: false,
                        onChanged: (value) {
                      },
                        activeColor: Colors.red,
                      ),
                      Text(
                        "Remember me",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontStyle: FontStyle.italic,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0,
                            )),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: maxHeight/100, bottom: maxHeight/24),
                  child: GestureDetector(
                    onTap: () => toForgotPassword,
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 16.0,
                          )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: maxWidth *2/3,
              height: maxHeight / 16,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account?",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () => toSignUp(),
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 16.0,
                          )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: maxHeight/80, bottom: maxHeight/80),
              child: Row(
                children: [
                  Expanded(child: Container(
                      margin: EdgeInsets.only(left: maxWidth/20, right: maxWidth/20),
                      child: const Divider())),
                  Text(
                    "Or",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16.0,
                        )),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(child: Container(
                      margin: EdgeInsets.only(left: maxWidth/20, right: maxWidth/20),
                      child: const Divider())),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: (
                      sqrt(pow(maxWidth/8, 2) + pow(maxHeight/16, 2))/3
                  ),
                  backgroundColor: const Color(0xffFFEFE8),
                  child: const Icon(
                    Icons.facebook,
                    color: Color(0xff3f51b5),
                  ),
                ),
                CircleAvatar(
                  radius: (
                      sqrt(pow(maxWidth/8, 2) + pow(maxHeight/16, 2))/3
                  ),
                  backgroundColor: const Color(0xffFFEFE8),
                  child: const CircleAvatar(
                    radius: 12.0,
                    backgroundImage: AssetImage('assets/icons/google.png'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                CircleAvatar(
                  radius: (
                      sqrt(pow(maxWidth/8, 2) + pow(maxHeight/16, 2))/3
                  ),
                  backgroundColor: const Color(0xffFFEFE8),
                  child: const Icon(
                    Icons.apple,
                    color: Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void toForgotPassword(){

}

void toSignUp(){
  Get.to(const SignupPage());
}

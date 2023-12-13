import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelier/views/confirmation_otp_page.dart';

import 'login_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: maxWidth / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Forgot password?",
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
              margin: EdgeInsets.only(top: maxHeight/100, bottom: maxHeight/20),
              child: Center(
                child: Text(
                  "Please enter your registered email address, we will get back to you with the reset password url and confirmation OTP.",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
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
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: maxHeight/24),
              child: SizedBox(
                width: maxWidth *2/3,
                height: maxHeight / 16,
                child: ElevatedButton(
                  onPressed: () => toOTP(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text(
                    'SUBMIT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No problem?",
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
                    onTap: () => toSignIn(),
                    child: Text(
                      "Sign in",
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
          ],
        ),
      ),
    );
  }
}

void toSignIn(){
  Get.to(const LoginPage());
}

void toOTP(){
  Get.to(const ConfirmationOTPPage());
}

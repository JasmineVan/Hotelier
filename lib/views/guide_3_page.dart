import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelier/views/signup_page.dart';

class Guide3Page extends StatefulWidget {
  const Guide3Page({Key? key}) : super(key: key);

  @override
  State<Guide3Page> createState() => _Guide3PageState();
}

class _Guide3PageState extends State<Guide3Page> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    // double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: GestureDetector(
        onTap: nextPage,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg (9).jpg'),
                fit: BoxFit.cover,
                opacity: 0.9,
              )),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: maxWidth / 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find your desire Hotel here.",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 32.0,
                      )),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void nextPage(){
  Get.to(const SignupPage());
}

void skipPage(){
  Get.to(const SignupPage());
}
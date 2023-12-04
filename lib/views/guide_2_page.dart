import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:hotelier/views/guide_3_page.dart';
import 'package:hotelier/views/signup_page.dart';

class Guide2Page extends StatefulWidget {
  const Guide2Page({Key? key}) : super(key: key);

  @override
  State<Guide2Page> createState() => _Guide2PageState();
}

class _Guide2PageState extends State<Guide2Page> {

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/bg (4).jpg'),
          fit: BoxFit.cover,
          opacity: 0.8,
        )),
        child: Container(
          margin: EdgeInsets.only(left: maxWidth / 20, right: maxWidth / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Welcome to a world of luxury and comfort.",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 32.0,
                    )),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  "Explore our amenities, dine in style, and relax—your satisfaction is our priority.",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: SizedBox(
                  width: maxWidth *2/3,
                  height: maxHeight / 16,
                  child: ElevatedButton(
                    onPressed: nextPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: SizedBox(
                  width: maxWidth *2/3,
                  height: maxHeight / 16,
                  child: ElevatedButton(
                    onPressed: skipPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.red),
                    ),
                    child: const Text(
                      'SKIP',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void nextPage(){
  Get.to(const Guide3Page());
}

void skipPage(){
  Get.to(const SignupPage());
}


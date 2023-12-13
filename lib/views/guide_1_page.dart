import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelier/views/guide_2_page.dart';
import 'package:hotelier/views/signup_page.dart';

class Guild1Page extends StatefulWidget {
  const Guild1Page({Key? key}) : super(key: key);

  @override
  State<Guild1Page> createState() => _Guild1PageState();
}

class _Guild1PageState extends State<Guild1Page> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: TrapezoidClipper(),
            child: Image.asset(
              'assets/images/bg (10).jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: maxWidth / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Let's have the best vacation with us",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 32.0,
                  )),
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
                        backgroundColor: Colors.white,
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
          )
        ],
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height * 4 / 5);
    path.lineTo(0.0, size.height * 3.5 / 5);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

void nextPage(){
  Get.to(const Guide2Page());
}

void skipPage(){
  Get.to(const SignupPage());
}
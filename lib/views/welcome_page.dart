import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'guide_1_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: GestureDetector(
        onTap: () => Get.to(const Guild1Page()),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/bg (6).jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          )),
          child: Container(
            margin: EdgeInsets.only(left: maxWidth / 20, right: maxWidth / 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 48.0,
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hotel",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 60.0,
                      )),
                    ),
                    Text(
                      "ier",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 60.0,
                      )),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: maxHeight / 8, bottom: maxHeight / 12),
                  child: Center(
                    child: Text(
                      "Welcome to a world of luxury and comfort at Hotelier! Our team is thrilled to have you as our guest. ",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

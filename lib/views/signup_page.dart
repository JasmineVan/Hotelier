import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: maxWidth / 20, right: maxWidth / 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Let's you in",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 32.0,
                    )),
                textAlign: TextAlign.center,
              ),
            ),
            //  Continue with Facebook
            Container(
              margin: EdgeInsets.only(top: maxHeight/20, bottom: maxHeight/24),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: maxWidth/10, right: maxWidth/24),
                    child: const Icon(
                      Icons.facebook,
                      color: Color(0xff3f51b5),
                    ),
                  ),
                  Text(
                    "Continue With Facebook",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        )),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            //  Continue with Google
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: maxWidth/10, right: maxWidth/24),
                    child: const CircleAvatar(
                      radius: 12.0,
                      backgroundImage: AssetImage('assets/icons/google.png'),
                      backgroundColor: Colors.transparent,
                    )
                  ),
                  Text(
                    "Continue With Google",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        )),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            //  Continue with Apple
            Container(
              margin: EdgeInsets.only(top: maxHeight/24, bottom: maxHeight/24),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: maxWidth/10, right: maxWidth/24),
                    child: const Icon(
                      Icons.apple,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "Continue With Apple",
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                        )),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
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
                  'SIGN UP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: maxHeight/80, bottom: maxHeight/80),
              child: Text(
                "Or",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16.0,
                    )),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "More signup options",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                  )),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
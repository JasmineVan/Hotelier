import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationOTPPage extends StatefulWidget {
  const ConfirmationOTPPage({Key? key}) : super(key: key);

  @override
  State<ConfirmationOTPPage> createState() => _ConfirmationOTPPageState();
}

class _ConfirmationOTPPageState extends State<ConfirmationOTPPage> {
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
                "Confirmation code",
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
              margin:
                  EdgeInsets.only(top: maxHeight / 100, bottom: maxHeight / 20),
              child: Center(
                child: Text(
                  "We have sent a verification code to your registered email address.",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  )),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: maxWidth / 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      counterText: '',
                    ),
                    onTap: () {},
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: maxWidth / 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      counterText: '',
                    ),
                    onTap: () {},
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: maxWidth / 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      counterText: '',
                    ),
                    onTap: () {},
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: maxWidth / 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      counterText: '',
                    ),
                    onTap: () {},
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: maxWidth / 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      counterText: '',
                    ),
                    onTap: () {},
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: maxWidth / 8,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1.0,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      counterText: '',
                    ),
                    onTap: () {},
                    style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: maxHeight / 24),
              child: SizedBox(
                width: maxWidth * 2 / 3,
                height: maxHeight / 16,
                child: ElevatedButton(
                  onPressed: () {

                  },
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
                  "Don't receive the OTP?",
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
                    onTap: () {

                    },
                    child: Text(
                      "Resend",
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

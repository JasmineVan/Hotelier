import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: maxWidth / 20, right: maxWidth / 20, top: maxWidth / 6, bottom: maxWidth / 10),
          child: Column(
            children: [
              SizedBox(
                width: maxWidth * 90/100,
                height: maxHeight * 1/10,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    hintText: 'Search for a city, area or a hotel',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    counterText: '',
                  ),
                  onTap: () {},
                  maxLength: 50,
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: Container(
                  padding: EdgeInsets.all(maxWidth / 20),
                  width: maxWidth * 9/10,
                  height: maxHeight / 5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg (9).jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            color: Colors.grey.withOpacity(0.5),
                            width: maxWidth * 10/20,
                            height: maxHeight / 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Hotel des Arts",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      )),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "MGallery Collection",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      )),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                          child: Container(
                            width: maxWidth * 1/8,
                            height: maxHeight * 1/30,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "5.0",
                                  style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      )),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(Icons.star, color: Colors.white.withOpacity(0.9),size: 12.0),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

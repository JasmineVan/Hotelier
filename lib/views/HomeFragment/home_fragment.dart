import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelier/controllers/HomeFragment/home_fragment_controller.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> with SingleTickerProviderStateMixin{
  final controller = Get.put(HomeFragmentController());
  String? defaultValue;
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    defaultValue = controller.getDefaultValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(
              left: maxWidth / 20,
              right: maxWidth / 20,
              top: maxWidth / 6,
              bottom: maxWidth / 10),
          child: Column(
            children: [
              // TODO: This is Search bar
              SizedBox(
                width: maxWidth * 90 / 100,
                height: maxHeight * 1 / 10,
                child: TextField(
                  controller: controller.searchTextEditingController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    hintText: 'Search for a city, area or a hotel',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    counterText: '',
                  ),
                  onTap: () {},
                  maxLength: 50,
                ),
              ),
              // TODO: This Main carousel
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                child: Container(
                  padding: EdgeInsets.all(maxWidth / 20),
                  width: maxWidth * 9 / 10,
                  height: maxHeight / 5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/bg (9).jpg'),
                        fit: BoxFit.cover,
                        opacity: 0.8),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0)),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            color: Colors.grey.withOpacity(0.5),
                            width: maxWidth * 10 / 20,
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
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.red,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12.0)),
                          child: Container(
                            width: maxWidth * 1 / 8,
                            height: maxHeight * 1 / 30,
                            decoration: const BoxDecoration(
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
                                Icon(Icons.star,
                                    color: Colors.white.withOpacity(0.9),
                                    size: 12.0),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // TODO: This is Dropdown button and locale
              Container(
                margin: EdgeInsets.symmetric(vertical: maxWidth / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
                      value: defaultValue,
                      items: controller.dropdownValue.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          defaultValue = value!;
                        });
                      },
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Hotel des Arts",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16.0,
                          )),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              child: Icon(
                                Icons.adjust,
                                size: 12.0,
                              ),
                            ),
                            Text(
                              "View on map",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 12.0,
                              )),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // TODO: This is Tab bar
              TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: Colors.grey,
                tabs: [
                  Tab(
                      child: Text(
                        "Hot",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0,
                            )),
                        textAlign: TextAlign.center,
                      ),
                  ),
                  Tab(
                    child: Text(
                      "Nearby",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16.0,
                          )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Popular",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16.0,
                          )),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              // TODO: This is Tab view
              Container(
                margin: EdgeInsets.symmetric(vertical: maxWidth / 40),
                // color: Colors.yellow,
                child: SizedBox(
                  height: maxHeight/4,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: controller.hotHotels.length,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: maxHeight/40),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                                    child: Container(
                                      width: (maxWidth - (maxHeight/40)*4)/3,
                                      height: maxHeight/4,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(controller.hotHotels.elementAt(index).pictureURL),
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: ClipRRect(
                                      borderRadius:
                                      const BorderRadius.all(Radius.circular(12.0)),
                                      child: Container(
                                        width: maxWidth * 1 / 8,
                                        height: maxHeight * 1 / 30,
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              controller.hotHotels.elementAt(index).rating.toString(),
                                              style: GoogleFonts.montserrat(
                                                  textStyle: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 12.0,
                                                  )),
                                              textAlign: TextAlign.center,
                                            ),
                                            Icon(Icons.star,
                                                color: Colors.white.withOpacity(0.9),
                                                size: 12.0),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.nearbyHotels.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: maxHeight/40),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                                  child: Container(
                                    width: (maxWidth - (maxHeight/40)*4)/3,
                                    height: maxHeight/4,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(controller.nearbyHotels.elementAt(index).pictureURL),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: const EdgeInsets.only(top: 8.0, left: 8.0),
                                  child: ClipRRect(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(12.0)),
                                    child: Container(
                                      width: maxWidth * 1 / 8,
                                      height: maxHeight * 1 / 30,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            controller.nearbyHotels.elementAt(index).rating.toString(),
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                )),
                                            textAlign: TextAlign.center,
                                          ),
                                          Icon(Icons.star,
                                              color: Colors.white.withOpacity(0.9),
                                              size: 12.0),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.popularHotels.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: maxHeight/40),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                                  child: Container(
                                    width: (maxWidth - (maxHeight/40)*4)/3,
                                    height: maxHeight/4,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(controller.popularHotels.elementAt(index).pictureURL),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: const EdgeInsets.only(top: 8.0, left: 8.0),
                                  child: ClipRRect(
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(12.0)),
                                    child: Container(
                                      width: maxWidth * 1 / 8,
                                      height: maxHeight * 1 / 30,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            controller.popularHotels.elementAt(index).rating.toString(),
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                )),
                                            textAlign: TextAlign.center,
                                          ),
                                          Icon(Icons.star,
                                              color: Colors.white.withOpacity(0.9),
                                              size: 12.0),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              // TODO: Recently booked
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Explore Our Promotion",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
              // TODO: This is Subordinate carousel
              Container(
                margin: EdgeInsets.symmetric(vertical: maxWidth / 40),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  child: Container(
                    padding: EdgeInsets.all(maxWidth / 20),
                    width: maxWidth * 9 / 10,
                    height: maxHeight / 5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg (2).jpg'),
                          fit: BoxFit.cover,
                          opacity: 0.8),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius:
                            const BorderRadius.all(Radius.circular(16.0)),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              color: Colors.grey.withOpacity(0.5),
                              width: maxWidth * 10 / 20,
                              height: maxHeight / 10,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "SALE UP TP 50%",
                                    style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 16.0,
                                        )),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    "Book your first stay",
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
                      ],
                    ),
                  ),
                ),
              ),
              // TODO: See all offers button
              SizedBox(
                width: maxWidth *2/3,
                height: maxHeight / 24,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  ),
                  child: const Text(
                    'See all offers',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              // TODO: Recently booked
            ],
          ),
        ),
      ),
    );
  }
}

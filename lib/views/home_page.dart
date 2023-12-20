import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hotelier/views/HomeFragment/home_fragment.dart';
import 'package:hotelier/views/HomeFragment/notification_fragment.dart';
import 'package:hotelier/views/HomeFragment/profile_fragment.dart';
import 'package:hotelier/views/HomeFragment/search_fragment.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  static const List<Widget> widgetOptions = <Widget>[
    HomeFragment(),
    SearchFragment(),
    NotificationFragment(),
    ProfileFragment(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
            log(value.toString());
          });
        },
        selectedItemColor: Colors.red,
        selectedIconTheme:  const IconThemeData(color: Colors.red),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        unselectedIconTheme: IconThemeData(color: Colors.grey.withOpacity(0.5)),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: maxWidth/12),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: maxWidth/12),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: maxWidth/12),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: maxWidth/12),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



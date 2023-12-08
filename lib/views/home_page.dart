import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    int selectedIndex = 0;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: maxHeight/20, bottom: maxHeight/24),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (value) {

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


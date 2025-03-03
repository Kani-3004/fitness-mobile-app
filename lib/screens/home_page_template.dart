import 'package:fitness_mobile_app/screens/activity_tracker_page.dart';
import 'package:fitness_mobile_app/screens/home_page.dart';
import 'package:fitness_mobile_app/screens/notification_page.dart';
import 'package:fitness_mobile_app/screens/profile_page.dart';
import 'package:flutter/material.dart';

class HomePageTemplate extends StatefulWidget {
  const HomePageTemplate({super.key});

  @override
  State<HomePageTemplate> createState() => _HomePageTemplateState();
}

class _HomePageTemplateState extends State<HomePageTemplate> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const ActivityTrackerPage(),
    const Center(child: Text("Search Placeholder")),
    const Center(child: Text("Camera Placeholder")),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    if (index != 2 && index != 3) {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    color:
                        Colors.grey[600], // Darker grey for better visibility
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "Masi Ramezanzade",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => NotificationPage(),
                    ),
                  );
                },
                icon: Icon(Icons.notifications_none),
              ),
            )
          ],
        ),

        // Dynamic Body Content
        body: pages[selectedIndex],

        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/home.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/activity.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/search.png",
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/camera.png"), label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/profile.png"), label: ""),
          ],
        ),
      ),
    );
  }
}

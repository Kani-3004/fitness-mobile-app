import 'package:fitness_mobile_app/screens/activity_tracker_page.dart';
import 'package:fitness_mobile_app/screens/home_page.dart';
import 'package:fitness_mobile_app/screens/profile_page.dart';
import 'package:fitness_mobile_app/screens/progress_photo_page.dart';
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
    const ProgressPhotoPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    if (index != 2) {
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
        body: pages[selectedIndex],
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          clipBehavior: Clip.none,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 0 ? Colors.purple : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset("assets/images/home.png"),
                  ),
                  onPressed: () => _onItemTapped(0),
                ),
                IconButton(
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 1 ? Colors.purple : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset("assets/images/activity.png"),
                  ),
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(
                    //     builder: (context) => ActivityTrackerPage(),
                    //   ),
                    // );
                  },
                  // onPressed: () => _onItemTapped(1),
                ),
                SizedBox(width: 48),
                IconButton(
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 3 ? Colors.purple : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset("assets/images/camera.png"),
                  ),
                  onPressed: () => _onItemTapped(3),
                ),
                IconButton(
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      selectedIndex == 4 ? Colors.purple : Colors.grey,
                      BlendMode.srcIn,
                    ),
                    child: Image.asset("assets/images/profile.png"),
                  ),
                  onPressed: () => _onItemTapped(4),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFF825FF5),
                Color(0xFFA677F2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            shape: CircleBorder(),
            onPressed: () {},
            elevation: 0,
            child: Image.asset("assets/images/search.png"),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

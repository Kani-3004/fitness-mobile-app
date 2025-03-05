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
        // appBar: AppBar(
        //   toolbarHeight: MediaQuery.of(context).size.height * 0.07,
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   title: Padding(
        //     padding: const EdgeInsets.only(left: 8.0, top: 8.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Welcome back",
        //           style: TextStyle(
        //             color: Colors.grey[600],
        //             fontSize: 18,
        //           ),
        //         ),
        //         const Text(
        //           "Masi Ramezanzade",
        //           style: TextStyle(
        //             fontWeight: FontWeight.w900,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.only(right: 8.0, top: 8.0),
        //       child: IconButton(
        //         onPressed: () {
        //           Navigator.of(context).pushReplacement(
        //             MaterialPageRoute(
        //               builder: (context) => NotificationPage(),
        //             ),
        //           );
        //         },
        //         icon: Container(
        //           height: 40,
        //           width: 40,
        //           decoration: BoxDecoration(
        //               shape: BoxShape.rectangle,
        //               borderRadius: BorderRadius.circular(10),
        //               color: Color(0xffF7F8F8)),
        //           child: IconButton(
        //             onPressed: () {
        //               Navigator.of(context).pushReplacement(
        //                 MaterialPageRoute(
        //                   builder: (context) => NotificationPage(),
        //                 ),
        //               );
        //             },
        //             icon: Icon(
        //               Icons.notifications_none,
        //               size: 18,
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
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
                  onPressed: () => _onItemTapped(1),
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
            onPressed: () => setState(() => selectedIndex = 2),
            elevation: 0,
            child: Image.asset("assets/images/search.png"),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

import 'package:fitness_mobile_app/screens/activity_tracker_page.dart';
import 'package:flutter/material.dart';

class TodayTargetHomepage extends StatefulWidget {
  const TodayTargetHomepage({super.key});

  @override
  State<TodayTargetHomepage> createState() => _TodayTargetHomepageState();
}

class _TodayTargetHomepageState extends State<TodayTargetHomepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        gradient: LinearGradient(
          colors: [Color(0xFFFAE8F7), Color(0xFFF2DCFC)],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Today Target",
              style: TextStyle(
                fontSize: screenWidth * 0.040,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ActivityTrackerPage(),
                  ),
                );
              },
              child: Container(
                constraints: BoxConstraints(minHeight: screenHeight * 0.04),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.045),
                  gradient: LinearGradient(
                    colors: [Color(0xFF805DF5), Color(0xFFA675F0)],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenWidth * 0.02,
                    horizontal: screenWidth * 0.04,
                  ),
                  child: Text(
                    "Check",
                    style: TextStyle(
                      fontSize: screenWidth * 0.032,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

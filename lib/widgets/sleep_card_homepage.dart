import 'package:fitness_mobile_app/widgets/sleep_chart_homepage.dart';
import 'package:flutter/material.dart';

class SleepCardHomepage extends StatefulWidget {
  const SleepCardHomepage({super.key});

  @override
  State<SleepCardHomepage> createState() => _SleepCardHomepageState();
}

class _SleepCardHomepageState extends State<SleepCardHomepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      elevation: 5,
      shadowColor: Colors.black45,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.02,
              right: screenWidth * 0.04,
              left: screenWidth * 0.04,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sleep",
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [
                            Color(0xFFE391D5),
                            Color(0xFFC355F2),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: Text(
                        "8h 20m",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: SizedBox(
                height: screenHeight * 0.15,
                child: SleepChartHomepage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

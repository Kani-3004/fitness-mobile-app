import 'package:fitness_mobile_app/widgets/heartrate_chart_homepage.dart';
import 'package:flutter/material.dart';

class HeartrateCardHomepage extends StatefulWidget {
  const HeartrateCardHomepage({super.key});

  @override
  State<HeartrateCardHomepage> createState() => _HeartrateCardHomepageState();
}

class _HeartrateCardHomepageState extends State<HeartrateCardHomepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        gradient: LinearGradient(
          colors: [
            Color(0xFFFAE8F7),
            Color(0xFFF2DCFC),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Padding(
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
                        "Heart Rate",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.005),
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
                          "78 BPM",
                          style: TextStyle(
                            fontSize: screenWidth * 0.040,
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
          ),
          Flexible(
            flex: 3,
            child: SizedBox(
              height: screenHeight * 0.2,
              child: HeartrateChartHomepage(),
            ),
          ),
        ],
      ),
    );
  }
}

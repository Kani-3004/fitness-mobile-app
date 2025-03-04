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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
          //column for the two heart rate texts
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 15,
                left: 15,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Heart Rate",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [
                              Color(0xFFE391D5),
                              Color(0xFFC355F2),
                            ], // Gradient colors
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "78 BPM",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Keep white for visibility
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //space for spline chart

          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: SizedBox(
                height: 150, // Adjust height as needed
                child: HeartrateChartHomepage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
    return Card(
      elevation: 5,
      shadowColor: Colors.black45,
      color: Colors.white,
      child: Column(
        //column to hold everything
        children: [
          Padding(
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
                      "Sleep",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                        "8h 20m",
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
          Expanded(
            flex: 2,
            child: SleepChartHomepage(),
          ),
        ],
      ),
    );
  }
}

import 'package:fitness_mobile_app/widgets/waterintake_stepper_homepage.dart';
import 'package:flutter/material.dart';

class WaterIntakeHomepage extends StatefulWidget {
  const WaterIntakeHomepage({super.key});

  @override
  State<WaterIntakeHomepage> createState() => _WaterIntakeHomepageState();
}

class _WaterIntakeHomepageState extends State<WaterIntakeHomepage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black45,
      color: Colors.white,
      child: Column(
        //column to hold everything
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 15,
                left: 15,
              ),
              //row that contains all the lines of text
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Water Intake",
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
                          "4 Litres",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Keep white for visibility
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Real time Updates",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 80,
                child: WaterintakeStepperHomepage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

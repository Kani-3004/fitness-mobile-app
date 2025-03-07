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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * 0.45,
      height: screenHeight * 0.22,
      child: Card(
        elevation: 5,
        shadowColor: Colors.black45,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(screenWidth * 0.04),
        ),
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Water Intake",
                style: TextStyle(
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [Color(0xFFE391D5), Color(0xFFC355F2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: Text(
                  "4 Litres",
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.005),
              Text(
                "Real time Updates",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: WaterintakeStepperHomepage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

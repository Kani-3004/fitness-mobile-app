import 'package:flutter/material.dart';
import 'package:another_stepper/another_stepper.dart';

class WaterintakeStepperHomepage extends StatefulWidget {
  const WaterintakeStepperHomepage({super.key});

  @override
  State<WaterintakeStepperHomepage> createState() =>
      _WaterintakeStepperHomepageState();
}

class _WaterintakeStepperHomepageState
    extends State<WaterintakeStepperHomepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return AnotherStepper(
      stepperList: [
        StepperData(
          title: StepperText(
            "6am - 8am",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: StepperText(
            "600ml",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.020,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          iconWidget: _buildStepIcon(screenWidth),
        ),
        StepperData(
          title: StepperText(
            "6am - 8am",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: StepperText(
            "600ml",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.020,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          iconWidget: _buildStepIcon(screenWidth),
        ),
        StepperData(
          title: StepperText(
            "6am - 8am",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: StepperText(
            "600ml",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.020,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          iconWidget: _buildStepIcon(screenWidth),
        ),
        StepperData(
          title: StepperText(
            "9am - 11am",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.025,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: StepperText(
            "800ml",
            textStyle: TextStyle(
              fontSize: screenWidth * 0.020,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          iconWidget: _buildStepIcon(screenWidth),
        ),
      ],
      stepperDirection: Axis.vertical,
      activeBarColor: Colors.purple.shade200,
      inActiveBarColor: Colors.grey.shade300,
      iconWidth: screenWidth * 0.015,
      iconHeight: screenWidth * 0.015,
      verticalGap: screenHeight * 0.012,
      barThickness: screenWidth * 0.003,
    );
  }

  Widget _buildStepIcon(double screenWidth) {
    return Container(
      width: screenWidth * 0.03,
      height: screenWidth * 0.03,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 203, 125, 216),
        shape: BoxShape.circle,
      ),
    );
  }
}

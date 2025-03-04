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
    return AnotherStepper(
      stepperList: [
        StepperData(
          title: StepperText(
            "6am - 8am",
            textStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: StepperText(
            "600ml",
            textStyle: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          iconWidget: _buildStepIcon(),
        ),
        StepperData(
          title: StepperText(
            "9am - 11am",
            textStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: StepperText(
            "800ml",
            textStyle: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          iconWidget: _buildStepIcon(),
        ),
      ],
      stepperDirection: Axis.vertical,
      activeBarColor: Colors.purple.shade200,
      inActiveBarColor: Colors.grey.shade300,
      iconWidth: 10,
      iconHeight: 10,
      verticalGap: 15,
      barThickness: 1,
    );
  }

  Widget _buildStepIcon() {
    return Container(
      width: 12,
      height: 12,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 203, 125, 216),
        shape: BoxShape.circle,
      ),
    );
  }
}

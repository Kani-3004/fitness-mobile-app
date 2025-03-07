import 'package:flutter/material.dart';

class CheckcardWorkoutPage extends StatefulWidget {
  const CheckcardWorkoutPage({super.key});

  @override
  State<CheckcardWorkoutPage> createState() => _CheckcardWorkoutPageState();
}

class _CheckcardWorkoutPageState extends State<CheckcardWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.08,
      child: Card(
        color: Color(0xffF5E1FB),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily Workout Schedule',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Container(
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    colors: [Color(0xffcc8fed), Color(0xff6b50f6)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 3.0,
                  ),
                  child: Center(
                    child: Text(
                      'Check',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenHeight * 0.015,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

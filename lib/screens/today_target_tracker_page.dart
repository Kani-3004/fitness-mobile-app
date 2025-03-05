import 'package:fitness_mobile_app/widgets/today_target_trackerpage.dart';
import 'package:flutter/material.dart';

class TodayTargetTrackerPage extends StatefulWidget {
  const TodayTargetTrackerPage({super.key});

  @override
  State<TodayTargetTrackerPage> createState() => _TodayTargetTrackerPageState();
}

class _TodayTargetTrackerPageState extends State<TodayTargetTrackerPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Today Target',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: screenHeight * 0.018,
                  fontWeight: FontWeight.w600),
            ),

            
            Container(
              height: screenHeight * 0.03, 
              width: screenWidth * 0.08,   
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                  colors: [Color(0xff6b50f6), Color(0xffcc8fed)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                  size: screenHeight * 0.02,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 15),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TodayTargetTrackerpage(
              imagePath: 'assets/images/glass 1.png',
              title: 'Water Intake',
              amount: '8L',
            ),
            TodayTargetTrackerpage(
              imagePath: 'assets/images/boots 1.png',
              title: 'Foot Steps',
              amount: '2400',
            ),
          ],
        )
      ],
    );
  }
}

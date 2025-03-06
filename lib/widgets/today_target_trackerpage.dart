import 'package:flutter/material.dart';

class TodayTargetTrackerpage extends StatefulWidget {
  final String imagePath;
  final String title;
  final String amount;

  const TodayTargetTrackerpage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.amount,
  });

  @override
  State<TodayTargetTrackerpage> createState() => _TodayTargetTrackerpageState();
}

class _TodayTargetTrackerpageState extends State<TodayTargetTrackerpage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.085,
      width: screenWidth * 0.4,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Image.asset(
              widget.imagePath,
              height: screenHeight * 0.8,
            ),
            // SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [Color(0xFF6B50F6), Color(0xFFCC8FED)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: Text(
                    widget.amount,
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Color(0xffb6b4c2),
                    fontSize: screenHeight * 0.015,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

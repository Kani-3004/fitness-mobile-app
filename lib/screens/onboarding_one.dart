import 'package:flutter/material.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: screenHeight * 0.5, // 40% of screen height
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE38FD8),
                      Color(0xFFC457F2),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.1,
              child: Image.asset(
                "assets/images/onboarding_one.png",
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Custom Clipper for Diagonal Wave
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.8); // Start from bottom-left

    path.quadraticBezierTo(
      size.width * 0.6, size.height * 1.33, // Control point
      size.width, size.height * 0.6, // End point
    );

    path.lineTo(size.width, 0); // Close at top-right
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

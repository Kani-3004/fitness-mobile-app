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
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              // Curved Background
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: screenHeight * 0.5,
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

              // Clipped Image inside the curve
              Positioned(
                top: screenHeight * 0.029,
                left: screenWidth * 0.01,
                right: screenWidth * 0.01,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Image.asset(
                    "assets/images/onboarding_one.png",
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.47,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),

          Spacer(flex: 1),

          // Text
          Text(
            'Track Your Goal',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Don't worry if you have trouble determining your goals. We can help you determine your goals and track them.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          Spacer(flex: 2),

          // Floating Action Button
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF825FF5), Color(0xFFA677F2)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Clipper for Diagonal Wave
class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height * 0.82);

    path.quadraticBezierTo(
      size.width * 0.74,
      size.height * 1.33,
      size.width,
      size.height * 0.45,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

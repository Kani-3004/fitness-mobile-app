import 'package:flutter/material.dart';

class UserfitnessProfilePage extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  const UserfitnessProfilePage(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  State<UserfitnessProfilePage> createState() => _UserfitnessProfilePageState();
}

class _UserfitnessProfilePageState extends State<UserfitnessProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = widget.screenWidth;
    double screenHeight = widget.screenHeight;

    // Adjust padding and font size dynamically
    double padding = screenWidth * 0.04;
    double fontSize = screenWidth * 0.04;

    return Card(
      color: Colors.white,
      elevation: 0,
      shadowColor: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildProfileCard("180cm", "Height", padding, fontSize),
          buildProfileCard("65kg", "Weight", padding, fontSize),
          buildProfileCard("22yo", "Age", padding, fontSize),
        ],
      ),
    );
  }

  Widget buildProfileCard(
      String value, String label, double padding, double fontSize) {
    return Expanded(
      child: Card(
        shadowColor: Colors.black26,
        color: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    colors: [
                      Color(0xFFE391D5),
                      Color(0xFFC355F2),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds);
                },
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: fontSize, // Responsive font size
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: padding * 0.5), // Responsive spacing
              Text(
                label,
                style: TextStyle(
                  fontSize: fontSize * 0.75, // Slightly smaller label font size
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserinfoProfilePage extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;
  const UserinfoProfilePage({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<UserinfoProfilePage> createState() => _UserinfoProfilePageState();
}

class _UserinfoProfilePageState extends State<UserinfoProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Colors.white,
      elevation: 0,
      shadowColor: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: widget.screenHeight * 0.02,
          horizontal: widget.screenWidth * 0.04,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage:
                  const AssetImage("assets/images/Spiderman pfp.jpg"),
              radius: widget.screenWidth * 0.08,
            ),
            SizedBox(width: widget.screenWidth * 0.02),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Masi Ramezanzade",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: widget.screenWidth * 0.04,
                    ),
                  ),
                  SizedBox(height: widget.screenHeight * 0.005),
                  Text(
                    "Lose a Fat Program",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: widget.screenWidth * 0.035,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.screenWidth * 0.05),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF805DF5),
                    Color(0xFFA675F0),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: widget.screenHeight * 0.01,
                  horizontal: widget.screenWidth * 0.08,
                ),
                child: Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: widget.screenWidth * 0.035,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

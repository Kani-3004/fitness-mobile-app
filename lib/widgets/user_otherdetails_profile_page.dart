import 'package:fitness_mobile_app/screens/login_page.dart';
import 'package:flutter/material.dart';

class OtherdetailsProfilePage extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const OtherdetailsProfilePage({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<OtherdetailsProfilePage> createState() =>
      _OtherdetailsProfilePageState();
}

class _OtherdetailsProfilePageState extends State<OtherdetailsProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: widget.screenWidth * 0.03,
            horizontal: widget.screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Other",
              style: TextStyle(
                fontSize: widget.screenWidth * 0.045,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: widget.screenHeight * 0.015),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildOtherRow(
                      "assets/images/Icon-Message.png", "Contact Us"),
                  _buildOtherRow(
                      "assets/images/Icon-Privacy.png", "Privacy Policy"),
                  _buildOtherRow("assets/images/Icon-Setting.png", "Settings"),
                  Padding(
                    padding: EdgeInsets.only(left: widget.screenWidth * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  ShaderMask(
                                    shaderCallback: (Rect bounds) {
                                      return LinearGradient(
                                        colors: [
                                          Color(0xFF00F2DA),
                                          Color(0xFF00FF6F)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ).createShader(bounds);
                                    },
                                    child: SizedBox(
                                      height: widget.screenWidth * 0.06,
                                      width: widget.screenWidth * 0.055,
                                      child: Icon(
                                        Icons.logout,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: widget.screenWidth * 0.02),
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: widget.screenWidth * 0.07,
                          color: Colors.grey[400]!,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOtherRow(String iconPath, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: widget.screenWidth * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                iconPath,
                width: widget.screenWidth * 0.06,
                height: widget.screenWidth * 0.06,
              ),
              SizedBox(width: widget.screenWidth * 0.02),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: widget.screenWidth * 0.04,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right,
            size: widget.screenWidth * 0.07,
            color: Colors.grey[400]!,
          ),
        ],
      ),
    );
  }
}

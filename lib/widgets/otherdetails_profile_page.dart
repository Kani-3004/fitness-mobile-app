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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: Text(
                "Other",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 0),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  _buildOtherRow(
                      "assets/images/Icon-Message.png", "Contact Us"),
                  _buildOtherRow(
                      "assets/images/Icon-Privacy.png", "Privacy Policy"),
                  _buildOtherRow("assets/images/Icon-Setting.png", "Settings"),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0, left: 4.0),
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
                                    height: 20,
                                    width: 20,
                                    child: Icon(
                                      Icons.logout,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
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
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 30,
                            color: Colors.grey[400]!,
                          ),
                        ],
                      ),
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
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(iconPath, width: 24, height: 24),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.keyboard_arrow_right,
              size: 30,
              color: Colors.grey[400]!,
            ),
          ],
        ),
      ),
    );
  }
}

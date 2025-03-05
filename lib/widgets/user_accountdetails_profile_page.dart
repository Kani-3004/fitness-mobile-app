import 'package:flutter/material.dart';

class UserAccountdetailsProfilePage extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const UserAccountdetailsProfilePage({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<UserAccountdetailsProfilePage> createState() =>
      _UserAccountdetailsProfilePageState();
}

class _UserAccountdetailsProfilePageState
    extends State<UserAccountdetailsProfilePage> {
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
                "Account",
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
                  _buildAccountRow(
                      "assets/images/icon_profile.png", "Personal data"),
                  _buildAccountRow(
                      "assets/images/icon_achievement.png", "Achievement"),
                  _buildAccountRow(
                      "assets/images/icon_activity.png", "Activity History"),
                  _buildAccountRow(
                      "assets/images/icon_workout.png", "Workout Progress"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountRow(String iconPath, String title) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(iconPath, width: 24, height: 24),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
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

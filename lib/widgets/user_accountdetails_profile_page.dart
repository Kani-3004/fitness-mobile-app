import 'package:fitness_mobile_app/screens/workout_tracker_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: widget.screenWidth * 0.03,
          horizontal: widget.screenWidth * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account",
              style: TextStyle(
                fontSize: widget.screenWidth * 0.045,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: max(widget.screenHeight * 0.015, 6)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildAccountRow(
                    "assets/images/icon_profile.png",
                    "Personal data",
                  ),
                  _buildAccountRow(
                    "assets/images/icon_achievement.png",
                    "Achievement",
                  ),
                  _buildAccountRow(
                    "assets/images/icon_activity.png",
                    "Activity History",
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => WorkoutTrackerPage(),
                        ),
                      );
                    },
                    child: _buildAccountRow(
                      "assets/images/icon_workout.png",
                      "Workout Progress",
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

  Widget _buildAccountRow(String iconPath, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: widget.screenHeight * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                iconPath,
                width: max(widget.screenWidth * 0.06, 18),
                height: max(widget.screenWidth * 0.06, 18),
              ),
              SizedBox(width: max(widget.screenWidth * 0.02, 6)),
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: max(widget.screenWidth * 0.04, 11),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_right,
            size: max(widget.screenWidth * 0.07, 20),
            color: Colors.grey[400]!,
          ),
        ],
      ),
    );
  }
}

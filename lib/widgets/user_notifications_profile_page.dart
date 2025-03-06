import 'package:flutter/material.dart';

class NotificationsProfilePage extends StatefulWidget {
  final double screenHeight;
  final double screenWidth;

  const NotificationsProfilePage({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  State<NotificationsProfilePage> createState() =>
      _NotificationsProfilePageState();
}

class _NotificationsProfilePageState extends State<NotificationsProfilePage> {
  bool isNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    double fontSizeTitle = widget.screenWidth * 0.045;
    double fontSizeText = widget.screenWidth * 0.04;
    double iconSize = widget.screenWidth * 0.06;

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Notification",
              style: TextStyle(
                fontSize: fontSizeTitle,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: widget.screenHeight * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/Icon-Notif.png",
                      width: iconSize,
                      height: iconSize,
                    ),
                    SizedBox(width: widget.screenWidth * 0.02),
                    Text(
                      "Pop-up Notification",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: fontSizeText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: widget.screenWidth * 0.12, // Ensures alignment
                  child: Transform.scale(
                    scale: widget.screenWidth * 0.0018, // Adaptive switch size
                    child: Switch(
                      activeColor: Color(0xFF00FF73),
                      inactiveTrackColor: Colors.grey.shade300,
                      thumbColor: WidgetStatePropertyAll(Colors.white),
                      activeTrackColor: Color(0xFF00FF73),
                      trackOutlineWidth: WidgetStatePropertyAll(0.5),
                      trackOutlineColor:
                          WidgetStatePropertyAll(Colors.grey[400]),
                      value: isNotificationEnabled,
                      onChanged: (value) {
                        setState(() {
                          isNotificationEnabled = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

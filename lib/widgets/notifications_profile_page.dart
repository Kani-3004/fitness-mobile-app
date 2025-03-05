import 'dart:ui';

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
                "Notification",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/Icon-Notif.png"),
                    SizedBox(width: 10),
                    Text(
                      "Pop-up Notification",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 0.8, // Reduces the switch size
                  child: Switch(
                    activeColor: Color(0xFF00FF73),
                    inactiveTrackColor: Colors.grey.shade300,
                    thumbColor: WidgetStatePropertyAll(Colors.white),
                    activeTrackColor: Color(0xFF00FF73),
                    trackOutlineWidth: WidgetStatePropertyAll(0.5),
                    trackOutlineColor: WidgetStatePropertyAll(Colors.grey[400]),
                    value: isNotificationEnabled,
                    onChanged: (value) {
                      setState(() {
                        isNotificationEnabled = value;
                      });
                    },
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

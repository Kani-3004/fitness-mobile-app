import 'package:flutter/material.dart';

class NotificationDetailsWidget extends StatefulWidget {
  final String imagePath;
  final Color imageBgColor;
  final String message;
  final String timeInfo;

  const NotificationDetailsWidget(
    {
      super.key,
      required this.imagePath,
      required this.message,
      required this.timeInfo,
      required this.imageBgColor
    }
  );

  @override
  State<NotificationDetailsWidget> createState() => _NotificationDetailsWidgetState();
}

class _NotificationDetailsWidgetState extends State<NotificationDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: widget.imageBgColor,
            radius: 20,
            child: Image.asset(widget.imagePath),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
                // SizedBox(height: 5),
                Text(
                  widget.timeInfo,
                  style: TextStyle(
                    color: Color(0xffb6b4c2),
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.more_vert,
            size: 20,
            color: Color(0xffb6b4c2),
          ),
        ],
      ),
    );
  }
}

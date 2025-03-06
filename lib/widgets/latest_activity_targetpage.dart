import 'package:flutter/material.dart';

class LatestActivityTargetpage extends StatefulWidget {
  final String imagePath;
  final String message;
  final String timeInfo;
  final Color imageBgColor;

  const LatestActivityTargetpage(
      {super.key,
      required this.imagePath,
      required this.message,
      required this.timeInfo,
      required this.imageBgColor});

  @override
  State<LatestActivityTargetpage> createState() => _LatestActivityTargetpageState();
}

class _LatestActivityTargetpageState extends State<LatestActivityTargetpage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * 1.0,
      height: screenHeight * 0.12,
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.more_vert,
                  size: screenHeight * 0.02,
                  color: Color(0xffb6b4c2),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: widget.imageBgColor,
                    radius: screenHeight * 0.03,
                    child: Image.asset(
                      widget.imagePath,
                      height: screenHeight * 0.038,
                      // fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.message,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.018,
                              fontWeight: FontWeight.w500),
                        ),
                        // SizedBox(height: 5),
                        Text(
                          widget.timeInfo,
                          style: TextStyle(
                              color: Color(0xffb6b4c2),
                              fontSize: screenHeight * 0.013,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RegisterPageWidget extends StatefulWidget {
  final String imagePath;
  final String heading;
  final String content;

  const RegisterPageWidget(
      {super.key,
      required this.imagePath,
      required this.heading,
      required this.content});

  @override
  State<RegisterPageWidget> createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: widgetHeight,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffC558F2), Color(0xffE18CD9)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imagePath),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.heading,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 1.5,
                    height: 5,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.content,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

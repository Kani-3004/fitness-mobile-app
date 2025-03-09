import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReminderCardProgressPhotoPage extends StatefulWidget {
  const ReminderCardProgressPhotoPage({super.key});

  @override
  State<ReminderCardProgressPhotoPage> createState() => _ReminderCardProgressPhotoPageState();
}

class _ReminderCardProgressPhotoPageState extends State<ReminderCardProgressPhotoPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: Color(0xffFFE6E6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: FaIcon(
                  FontAwesomeIcons.x,
                  size: screenHeight * 0.014,
                  color: Color(0xffb6b4c2),
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffFFF9F9),
                    radius: screenHeight * 0.035,
                    child: Image.asset(
                      'assets/images/reminders-calender.png',
                      height: screenHeight * 0.04,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Reminder!',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color(0xffff0000),
                              fontSize: screenHeight * 0.015,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Next Photos Fall On July 08',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: screenHeight * 0.018,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
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
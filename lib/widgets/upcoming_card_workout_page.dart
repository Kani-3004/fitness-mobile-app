import 'package:flutter/material.dart';

class UpcomingCardWorkoutPage extends StatefulWidget {
  final String imagePath;
  final String message;
  final String time;
  final bool switchValue;

  const UpcomingCardWorkoutPage({
    super.key,
    required this.imagePath,
    required this.message,
    required this.time,
    required this.switchValue,
  });

  @override
  State<UpcomingCardWorkoutPage> createState() =>
      _UpcomingCardWorkoutPageState();
}

class _UpcomingCardWorkoutPageState extends State<UpcomingCardWorkoutPage> {
  late bool isSwitched;

  @override
  void initState() {
    super.initState();
    isSwitched = widget.switchValue;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffB3FBF2),
                  child: Image.asset(widget.imagePath),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.message,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.time,
                      style: TextStyle(color: Color(0xffa5a3b0), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSwitched = !isSwitched;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                width: 55,
                height: 27,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      isSwitched
                          ? LinearGradient(
                            colors: [Colors.cyanAccent, Colors.greenAccent],
                          )
                          : LinearGradient(
                            colors: [Color(0xffc6c4d4), Color(0xffc6c4d4)],
                          ),
                ),
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                      left: isSwitched ? 30 : 4,
                      top: 5,
                      child: Container(
                        width: 20,
                        height: 17,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

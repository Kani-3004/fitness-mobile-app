import 'package:flutter/material.dart';

class UpcomingCardWorkoutPage extends StatefulWidget {
  final String imagePath;
  final String message;
  final String time;
  final bool switchValue;

<<<<<<< HEAD
  const UpcomingCardWorkoutPage({
    super.key,
    required this.imagePath,
    required this.message,
    required this.time,
    required this.switchValue,
  });
=======
  const UpcomingCardWorkoutPage(
      {super.key,
      required this.imagePath,
      required this.message,
      required this.time,
      required this.switchValue});
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630

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
<<<<<<< HEAD
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

=======
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xffB3FBF2),
                  child: Image.asset(widget.imagePath),
                ),
<<<<<<< HEAD
                SizedBox(width: 10),
=======
                SizedBox(
                  width: 10,
                ),
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.message,
                      style: TextStyle(
<<<<<<< HEAD
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
=======
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
                    ),
                    Text(
                      widget.time,
                      style: TextStyle(color: Color(0xffa5a3b0), fontSize: 12),
<<<<<<< HEAD
                    ),
=======
                    )
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
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
<<<<<<< HEAD
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
=======
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: isSwitched
                      ? LinearGradient(
                          colors: [Colors.cyanAccent, Colors.greenAccent])
                      : LinearGradient(
                          colors: [Color(0xffc6c4d4), Color(0xffc6c4d4)]),
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
                ),
                child: Stack(
                  children: [
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
<<<<<<< HEAD
                      left: isSwitched ? 30 : 4,
                      top: 5,
                      child: Container(
                        width: 20,
                        height: 17,
=======
                      left: isSwitched ? 27 : 3,
                      top: 5,
                      child: Container(
                        width: 20,
                        height: 20,
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
<<<<<<< HEAD
            ),
=======
            )
>>>>>>> 80f66381fd6af4c23bcdbbf7075e0a5c5d6b8630
          ],
        ),
      ),
    );
  }
}

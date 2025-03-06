import 'package:flutter/material.dart';

class TrainCardWorkoutPage extends StatefulWidget {
  final String title;
  final String exercisesNo;
  final String time;
  final String imagePath;

  const TrainCardWorkoutPage({
    super.key, 
    required this.title, 
    required this.exercisesNo, 
    required this.time, 
    required this.imagePath
  });

  @override
  State<TrainCardWorkoutPage> createState() => _TrainCardWorkoutPageState();
}

class _TrainCardWorkoutPageState extends State<TrainCardWorkoutPage> {
  late String exercisesCount;
  late String time;

  @override
  void initState() {
    super.initState();
    exercisesCount = widget.exercisesNo; // Initialize from widget data
    time = widget.time;
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffF6E3FA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '$exercisesCount Exercises | ${time}mins',
                      style: TextStyle(
                        color: Color(0xffb6b4c2),
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text(
                        'View more',
                        style: TextStyle(
                          color: Color.fromARGB(255, 232, 127, 221),
                          fontSize: 12
                        ),
                      )
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xffFAEFFE),
                  child: Image.asset(
                    widget.imagePath,
                    height: 120,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
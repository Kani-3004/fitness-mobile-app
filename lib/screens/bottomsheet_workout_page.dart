import 'package:fitness_mobile_app/widgets/checkcard_workout_page.dart';
import 'package:fitness_mobile_app/widgets/train_card_workout_page.dart';
import 'package:fitness_mobile_app/widgets/upcoming_card_workout_page.dart';
import 'package:flutter/material.dart';

class BottomsheetWorkoutPage extends StatefulWidget {
  const BottomsheetWorkoutPage({super.key});

  @override
  State<BottomsheetWorkoutPage> createState() => _BottomsheetWorkoutPageState();
}

class _BottomsheetWorkoutPageState extends State<BottomsheetWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 5,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffEaEaEa),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CheckcardWorkoutPage(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Upcoming Workout',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(
                                color: Color(0xffa5a3b0),
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                      UpcomingCardWorkoutPage(
                        imagePath: 'assets/images/skipping_boy.png', 
                        message: 'Fullbody Workout', 
                        time: 'Today, 03:00pm', 
                        switchValue: true
                      ),
                      UpcomingCardWorkoutPage(
                        imagePath: 'assets/images/bigdumble_boy.png', 
                        message: 'Upperbody Workout', 
                        time: 'June 05, 02:00pm', 
                        switchValue: false
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'What Do You Want to Train',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                      TrainCardWorkoutPage(
                        title: 'Fullbody Workout', 
                        exercisesNo: '11', 
                        time: '32', 
                        imagePath: 'assets/images/upperbody.png'
                      ),
                      TrainCardWorkoutPage(
                        title: 'Lowerbody Workout', 
                        exercisesNo: '12', 
                        time: '40', 
                        imagePath: 'assets/images/lowebody-workout 1.png'
                      ),
                      TrainCardWorkoutPage(
                        title: 'AB Workout', 
                        exercisesNo: '14', 
                        time: '20', 
                        imagePath: 'assets/images/Ab-Workout 1.png'
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

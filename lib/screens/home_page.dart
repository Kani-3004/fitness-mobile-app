import 'package:fitness_mobile_app/widgets/bmi_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/heartrate_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/sleep_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/today_target_homepage.dart';
import 'package:fitness_mobile_app/widgets/water_intake_homepage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        // The column that contains everything
        child: Column(
          children: [
            SizedBox(height: 10),
            //first half of the page
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width * 0.91,
                child: Column(
                  children: [
                    //first half that has BMI
                    Flexible(
                      flex: 2,
                      child: BmiCardHomepage(),
                    ),
                    SizedBox(height: 25),

                    //second half that has today target
                    Flexible(
                      flex: 1,
                      child: TodayTargetHomepage(),
                    )
                  ],
                ),
              ),
            ),

            //Activity Status Text

            Row(
              children: [
                Text(
                  "Activity Status",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ],
            ),

            SizedBox(height: 20),

            //second half of the page
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.91,
                color: Colors.white,
                child: Column(
                  //Column that hs the three remaining cards
                  // in the second half of the page
                  children: [
                    //Heart Rate card
                    Flexible(
                      flex: 1,
                      child: HeartrateCardHomepage(),
                    ),
                    SizedBox(height: 15),

                    //row inside the column to have the water intake and sleep.

                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          //Water Intake
                          Expanded(
                            flex: 1,
                            child: WaterIntakeHomepage(),
                          ),
                          SizedBox(width: 15),

                          // Sleep card
                          Expanded(
                            flex: 1,
                            child: SleepCardHomepage(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

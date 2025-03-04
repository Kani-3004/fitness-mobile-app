import 'package:fitness_mobile_app/widgets/bmi_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/today_target_homepage.dart';
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
                    SizedBox(height: 15),

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
            SizedBox(height: 20),

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
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFAE8F7),
                              Color(0xFFF2DCFC),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            //column for the two heart rate texts
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                right: 15,
                                left: 15,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Heart Rate",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        ShaderMask(
                                          shaderCallback: (Rect bounds) {
                                            return LinearGradient(
                                              colors: [
                                                Color(0xFFE391D5),
                                                Color(0xFFC355F2),
                                              ], // Gradient colors
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                            ).createShader(bounds);
                                          },
                                          child: Text(
                                            "78 BPM",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors
                                                  .white, // Keep white for visibility
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )

                            //space for spline chart
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    //row inside the column to have the water intake and sleep.

                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          // heart rate card
                          Flexible(
                            flex: 1,
                            child: Card(
                              color: Color(0xFFF7E3FA),
                              child: Center(
                                child: Text("Heart Rate"),
                              ),
                            ),
                          ),
                          SizedBox(width: 15),

                          // water intake card
                          Flexible(
                            flex: 1,
                            child: Card(
                              color: Color(0xFFF7E3FA),
                              child: Center(
                                child: Text("Sleep"),
                              ),
                            ),
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

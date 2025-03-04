import 'package:fitness_mobile_app/widgets/pie_chart_homepage.dart';
import 'package:flutter/material.dart';

class BmiCardHomepage extends StatefulWidget {
  const BmiCardHomepage({super.key});

  @override
  State<BmiCardHomepage> createState() => _BmiCardHomepageState();
}

class _BmiCardHomepageState extends State<BmiCardHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color(0xFFE391D5),
            Color(0xFFC355F2),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            //the column of text on left of BMI card
            SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BMI (Body Mass Index)",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "You have a normal weight",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  //used container here since elevated buttons cannot have gradient.
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF805DF5),
                          Color(0xFFA675F0),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 15),
                      child: Text(
                        "View more",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //The pie chart goes here
            Flexible(
              flex: 1,
              child: PieChartHomepage(),
            ),
          ],
        ),
      ),
    );
  }
}

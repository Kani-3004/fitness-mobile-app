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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(screenWidth * 0.05),
        gradient: LinearGradient(
          colors: [
            Color(0xFFE391D5),
            Color(0xFFC355F2),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BMI (Body Mass Index)",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "You have a normal weight",
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.045),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF805DF5),
                            Color(0xFFA675F0),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                          horizontal: screenWidth * 0.04,
                        ),
                        child: Text(
                          "View more",
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: screenWidth * 0.3,
                height: screenWidth * 0.3,
                child: PieChartHomepage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

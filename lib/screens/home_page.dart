import 'package:fitness_mobile_app/widgets/bmi_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/heartrate_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/sleep_card_homepage.dart';
import 'package:fitness_mobile_app/widgets/today_target_homepage.dart';
import 'package:fitness_mobile_app/widgets/water_intake_homepage.dart';
import 'package:fitness_mobile_app/screens/notification_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.07,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.02,
            top: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
              Text(
                "Masi Ramezanzade",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.02,
              top: 8.0,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              icon: Container(
                height: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF7F8F8),
                ),
                child: Icon(
                  Icons.notifications_none,
                  size: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.012),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Flexible(flex: 2, child: BmiCardHomepage()),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Flexible(flex: 1, child: TodayTargetHomepage()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.01,
                    ),
                    child: Text(
                      "Activity Status",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Flexible(flex: 1, child: HeartrateCardHomepage()),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(flex: 1, child: WaterIntakeHomepage()),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04,
                            ),
                            Expanded(flex: 1, child: SleepCardHomepage()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}

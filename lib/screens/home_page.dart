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
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),
              ),
              const Text(
                "Masi Ramezanzade",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => NotificationPage(),
                  ),
                );
              },
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF7F8F8),
                ),
                child: Icon(
                  Icons.notifications_none,
                  size: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 10),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.91,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 2,
                        child: BmiCardHomepage(),
                      ),
                      SizedBox(height: 25),
                      Flexible(
                        flex: 1,
                        child: TodayTargetHomepage(),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Activity Status",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.91,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: HeartrateCardHomepage(),
                      ),
                      SizedBox(height: 15),
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: WaterIntakeHomepage(),
                            ),
                            SizedBox(width: 15),
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
      ),
    );
  }
}

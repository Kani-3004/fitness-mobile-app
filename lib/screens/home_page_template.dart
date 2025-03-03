import 'package:flutter/material.dart';

class HomePageTemplate extends StatefulWidget {
  const HomePageTemplate({super.key});

  @override
  State<HomePageTemplate> createState() => _HomePageTemplateState();
}

class _HomePageTemplateState extends State<HomePageTemplate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back",
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 18,
                ),
              ),
              Text(
                "Masi Ramezanzade",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          actions: [Icon(Icons.notifications_none_outlined)],
        ),

        //The Column that contains everything
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18.0),
              child: Container(
                color: Colors.deepPurple,
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // The body mass index card
                    Expanded(
                      flex: 1,
                      child: Card(
                        
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 125),
                          child: Text("BMI Card"),
                        ),
                        color: Colors.green,
                      ),
                    ),

                    // Today Target Card
                    Flexible(
                      flex: 1,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 90),
                          child: Text("Today Target Card"),
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            )

            // Activity Status Topic

            // Heart Rate card

            //Water intake card and sleep card
          ],
        ),
      ),
    );
  }
}

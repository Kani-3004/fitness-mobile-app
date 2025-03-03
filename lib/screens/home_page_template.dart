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
            // The body mass index card

            // Today Target Card

            // Activity Status Topic

            // Heart Rate card

            //Water intake card and sleep card
          ],
        ),
      ),
    );
  }
}

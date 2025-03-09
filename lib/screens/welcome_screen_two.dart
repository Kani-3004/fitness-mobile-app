import 'dart:async';

import 'package:fitness_mobile_app/screens/onboarding_one.dart';
import 'package:fitness_mobile_app/widgets/welcome_screen_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreenTwo extends StatefulWidget {
  const WelcomeScreenTwo({super.key});

  @override
  State<WelcomeScreenTwo> createState() => _WelcomeScreenTwoState();
}

class _WelcomeScreenTwoState extends State<WelcomeScreenTwo> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      if (mounted) {
        // Ensure the widget is still part of the tree
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => OnboardingOne()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenWidget(
        bgColor: [Color(0xffC558F2), Color(0xffE18CD9)],
        buttonGradientColor: [
          Color(0xff805EF4),
          Color(0xff946AF3),
          Color(0xffA676F1),
        ],
        richTextColor: Colors.white,
        textColor: Colors.white,
      ),
    );
  }
}

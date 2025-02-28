import 'package:fitness_mobile_app/screens/onboarding_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitnessMobileApp());
}

class FitnessMobileApp extends StatelessWidget {
  const FitnessMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Mobile App',
      debugShowCheckedModeBanner: false,
      home: OnboardingOne(),
    );
  }
}

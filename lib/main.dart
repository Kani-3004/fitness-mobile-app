import 'package:fitness_mobile_app/screens/onboarding_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FitnessMobileApp());
}

class FitnessMobileApp extends StatefulWidget {
  const FitnessMobileApp({super.key});

  @override
  State<FitnessMobileApp> createState() => _FitnessMobileAppState();
}

class _FitnessMobileAppState extends State<FitnessMobileApp> {
  @override
  Widget build(BuildContext context) {
    
    return const OnboardingOne();
  }
}

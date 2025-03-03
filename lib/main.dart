import 'package:fitness_mobile_app/screens/home_page_template.dart';
import 'package:fitness_mobile_app/screens/welcome_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FitnessMobileApp());
}

class FitnessMobileApp extends StatelessWidget {
  const FitnessMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      title: 'Fitness Mobile App',
      home: WelcomeScreenTwo(),
    );
  }
}

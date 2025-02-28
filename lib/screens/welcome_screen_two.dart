import 'package:fitness_mobile_app/widgets/welcome_screen_widget.dart';
import 'package:flutter/material.dart';

class WelcomeScreenTwo extends StatefulWidget {
  const WelcomeScreenTwo({super.key});

  @override
  State<WelcomeScreenTwo> createState() => _WelcomeScreenTwoState();
}

class _WelcomeScreenTwoState extends State<WelcomeScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenWidget(
        bgColor: [
          Color(0xffC558F2),
          Color(0xffE18CD9)
        ], 
        buttonGradientColor: [
          Color(0xff805EF4),
          Color(0xff946AF3),
          Color(0xffA676F1),
        ], 
        richTextColor: Color(0xff805EF4), 
        textColor: Color(0xffCAC9D3)
      ),
    );
  }
}

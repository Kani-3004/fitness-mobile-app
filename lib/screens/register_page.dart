import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {  
    final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.3,
              child: Column(
                children: [
                  Text(
                    'What is your goal?',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';

class WelcomeScreenOne extends StatefulWidget {
  const WelcomeScreenOne({super.key});

  @override
  State<WelcomeScreenOne> createState() => _WelcomeScreenOneState();
}

class _WelcomeScreenOneState extends State<WelcomeScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: 'DIDPOOL',
                style: TextStyle(
                  color: Color(0xff815EF4),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              children: [
                TextSpan(
                  text: 'Fit',
                  style: TextStyle(
                    color: Color(0xff1D1617),
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  )
                )
              ]
              ),
            ),
            Text(
              'Everybody Can Train',
              style: TextStyle(
                color: Color(0xffD8D6DE),
                fontSize: 12,
              ),
            ),
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: (){}, 
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
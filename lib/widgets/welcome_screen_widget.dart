import 'package:fitness_mobile_app/screens/onboarding_one.dart';
import 'package:flutter/material.dart';

class WelcomeScreenWidget extends StatefulWidget {
  final List<Color> bgColor;
  final Color richTextColor;
  final Color textColor;
  final List<Color> buttonGradientColor;

  const WelcomeScreenWidget({
    super.key,
    required this.bgColor,
    required this.buttonGradientColor,
    required this.richTextColor,
    required this.textColor,
  });

  @override
  State<WelcomeScreenWidget> createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: widget.bgColor,
              begin: Alignment.centerRight,
              end: Alignment.centerLeft)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: 'DIDPOOL',
                    style: TextStyle(
                      color: widget.richTextColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: 'Fit',
                          style: TextStyle(
                              color: Color(0xff1D1617),
                              fontSize: 40,
                              fontWeight: FontWeight.bold))
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Everybody Can Train',
                style: TextStyle(
                    color: widget.textColor,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => OnboardingOne()));
              },
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: widget.buttonGradientColor,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

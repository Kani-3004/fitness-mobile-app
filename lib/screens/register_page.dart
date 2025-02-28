import 'package:fitness_mobile_app/widgets/register_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final myItems = [
    RegisterPageWidget(
        imagePath: 'assets/images/improve_shape.png',
        heading: 'Improve Shape',
        content: 'I have a low amount of body fat'
            '\nand need / want to build more'
            '\nmuscle'),
    RegisterPageWidget(
        imagePath: 'assets/images/lean_tone.png',
        heading: 'Lean & Tone',
        content: "I'm \"skinny fat\", look thin but have"
            '\nno shape. I want to add learn'
            '\nmuscle in the right way'),
    RegisterPageWidget(
        imagePath: 'assets/images/lose_fat.png',
        heading: 'Lose a Fat',
        content: 'I have over 20 lbs to lose, I want to'
            '\ndrop all this fat and gain muscle'
            '\nmass'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.2,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'What is your goal?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'It will help us to choose a best \nprogram for you',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    enlargeFactor: 0.3,
                    enlargeCenterPage: true,
                    viewportFraction: 0.7,
                    autoPlay: false,
                    height: screenHeight * 0.6,
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    // autoPlayAnimationDuration: Duration(milliseconds: 500),
                    // autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: myItems,
                )
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: screenHeight * 0.1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff805EF4),
                        Color(0xff946AF3),
                        Color(0xffA676F1),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

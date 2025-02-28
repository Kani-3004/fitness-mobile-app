import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_mobile_app/widgets/register_page_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int currentIndex = 0;

  final List<Widget> myItems = [
    RegisterPageWidget(
      imagePath: 'assets/images/improve_shape.png',
      heading: 'Improve Shape',
      content: 'I have a low amount of body fat'
          '\nand need / want to build more'
          '\nmuscle',
    ),
    RegisterPageWidget(
      imagePath: 'assets/images/lean_tone.png',
      heading: 'Lean & Tone',
      content: "I'm \"skinny fat\", look thin but have"
          '\nno shape. I want to add lean'
          '\nmuscle in the right way',
    ),
    RegisterPageWidget(
      imagePath: 'assets/images/lose_fat.png',
      heading: 'Lose Fat',
      content: 'I have over 20 lbs to lose, I want to'
          '\ndrop all this fat and gain muscle'
          '\nmass',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.2,
                // Heading Text
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'What is your goal?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'It will help us to choose the best \nprogram for you',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              /// Carousel
              CarouselSlider(
                options: CarouselOptions(
                  enlargeFactor: 0.2,
                  enlargeCenterPage: true,
                  viewportFraction: 0.8,
                  autoPlay: false,
                  height: screenHeight * 0.6,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: myItems.asMap().entries.map((entry) {
                  int index = entry.key;
                  bool isCenter = index == currentIndex;

                  return AnimatedOpacity(
                    duration: Duration(milliseconds: 300),
                    opacity: isCenter ? 1.0 : 0.2,
                    child: entry.value,
                  );
                }).toList(),
              ),

              Spacer(),

              // Confirm button
              SizedBox(
                height: screenHeight * 0.072,
                child: InkWell(
                  onTap: () {
                    // Action on confirm tap
                  },
                  child: Container(
                    width: 350,
                    height: 25,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff805EF4),
                          Color(0xff946AF3),
                          Color(0xffA676F1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

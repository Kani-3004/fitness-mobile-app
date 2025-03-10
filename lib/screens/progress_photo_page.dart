import 'package:fitness_mobile_app/widgets/compare_card_progress_photo.dart';
import 'package:fitness_mobile_app/widgets/reminder_card_progress_photo_page.dart';
import 'package:fitness_mobile_app/widgets/track_progress_card_progress_photo.dart';
import 'package:flutter/material.dart';

class ProgressPhotoPage extends StatefulWidget {
  const ProgressPhotoPage({super.key});

  @override
  State<ProgressPhotoPage> createState() => _ProgressPhotoPageState();
}

class _ProgressPhotoPageState extends State<ProgressPhotoPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            // leading: Padding(
            //   padding: EdgeInsets.only(top: 16.0, left: 16.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Color(0xffF7F8F8),
            //     ),
            //     child: IconButton(
            //       onPressed: () {
            //         // Navigator.of(context).pushReplacement(
            //         //   MaterialPageRoute(builder: (context) => HomePageTemplate()),
            //         // );
            //       },
            //       icon: Icon(Icons.arrow_back_ios_new_rounded, size: 15),
            //     ),
            //   ),
            // ),
            title: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                textAlign: TextAlign.center,
                'Progress Photo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF7F8F8),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.02),
                    child: Image.asset(
                      'assets/images/Detail-Navs.png',
                      width: screenWidth * 0.06,
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: Column(
              children: [
                ReminderCardProgressPhotoPage(),
                SizedBox(height: 20),
                TrackProgressCardProgressPhoto(),
                SizedBox(height: 25),
                CompareCardProgressPhoto(),
                SizedBox(height: 5),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 12.0,
                    ),
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gallery',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenHeight * 0.02,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'See more',
                                style: TextStyle(
                                  color: Color(0xffa5a3b0),
                                  fontSize: screenHeight * 0.015,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 16.0,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '2 June',
                                        style: TextStyle(
                                          color: Color(0xffb6b4c2),
                                          fontSize: screenHeight * 0.015,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5834.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5836.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5835.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5838.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 16.0,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '5 May',
                                        style: TextStyle(
                                          color: Color(0xffb6b4c2),
                                          fontSize: screenHeight * 0.015,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5838.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5841.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5839.png',
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 4.0,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Rectangle 5834.png',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

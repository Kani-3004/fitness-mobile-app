import 'package:flutter/material.dart';

class TrackProgressCardProgressPhoto extends StatefulWidget {
  const TrackProgressCardProgressPhoto({super.key});

  @override
  State<TrackProgressCardProgressPhoto> createState() =>
      _TrackProgressCardProgressPhotoState();
}

class _TrackProgressCardProgressPhotoState
    extends State<TrackProgressCardProgressPhoto> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: Color(0xffF6E3FA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                              colors: [Color(0xffeea4ce), Color(0xffc150f6)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight)
                          .createShader(bounds),
                      child: RichText(
                        text: TextSpan(
                            text: 'Track Your Progress Each \nMonth With ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: screenHeight * 0.016,
                                height: 1.5,
                                fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                  text: 'Photo',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenHeight * 0.016,
                                      height: 1.5,
                                      fontWeight: FontWeight.w600))
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (BuildContext context) =>
                        //             OnboardingOne()));
                      },
                      child: Container(
                        width: screenWidth * 0.27,
                        height: screenHeight * 0.045,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff6b50f6),
                                  Color(0xffcc8fed)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Learn More',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: screenHeight * 0.015,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/progress-calender.png',
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.26,
                  fit: BoxFit.fill,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

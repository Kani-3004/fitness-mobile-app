import 'package:flutter/material.dart';

class CompareCardProgressPhoto extends StatefulWidget {
  const CompareCardProgressPhoto({super.key});

  @override
  State<CompareCardProgressPhoto> createState() => _CompareCardProgressPhotoState();
}

class _CompareCardProgressPhotoState extends State<CompareCardProgressPhoto> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: Color(0xffF5E1FB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Compare my Photo',
              style: TextStyle(
                color: Colors.black,
                fontSize: screenHeight * 0.018,
                fontWeight: FontWeight.w500
              ),
            ),
            Container(
              height: screenHeight * 0.04,
              width: screenWidth * 0.28,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffcc8fed),
                    Color(0xff6b50f6)
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Center(
                  child: Text(
                    'Compare',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.015,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
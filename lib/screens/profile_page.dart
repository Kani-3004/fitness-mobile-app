import 'package:fitness_mobile_app/widgets/user_notifications_profile_page.dart';
import 'package:fitness_mobile_app/widgets/user_otherdetails_profile_page.dart';
import 'package:fitness_mobile_app/widgets/user_accountdetails_profile_page.dart';
import 'package:fitness_mobile_app/widgets/userfitness_profile_page.dart';
import 'package:fitness_mobile_app/widgets/userinfo_profile_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;
    final double padding = screenWidth * 0.04;
    final double iconSize = screenWidth * 0.04;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(top: padding, left: padding),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffF7F8F8),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: iconSize,
              ),
            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(top: padding),
          child: Text(
            'Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.045,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: padding, right: padding),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Column(
            children: [
              // User data
              Container(
                height: screenHeight * 0.1,
                margin: const EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: UserinfoProfilePage(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),

              // User fitness
              Container(
                height: screenHeight * 0.12,
                margin: const EdgeInsets.only(bottom: 10),
                child: UserfitnessProfilePage(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),

              // Account details
              Container(
                height: screenHeight * 0.28,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(25, 0, 0, 0),
                      blurRadius: 30,
                      spreadRadius: 5,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(bottom: 8),
                child: UserAccountdetailsProfilePage(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),

              // Notification
              Container(
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(25, 0, 0, 0),
                      blurRadius: 30,
                      spreadRadius: 5,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(bottom: 10),
                child: NotificationsProfilePage(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),

              // Other details
              Container(
                height: screenHeight * 0.28,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(25, 0, 0, 0),
                      blurRadius: 30,
                      spreadRadius: 5,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(bottom: 10),
                child: OtherdetailsProfilePage(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

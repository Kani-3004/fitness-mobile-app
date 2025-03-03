import 'package:fitness_mobile_app/widgets/notification_details_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF7F8F8)
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 15,
                ),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              textAlign: TextAlign.center,
              'Notification',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF7F8F8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/Detail-Navs.png',
                ),
              )
            ),
          ),],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              NotificationDetailsWidget(
                imageBgColor: Color(0xffCDFDF0),
                imagePath: 'assets/images/pie.png', 
                message: "Hey, it's time for lunch", 
                timeInfo: 'About 1 minutes ago'
              ),
              Divider(color: Color(0xffc6c4d4),),
              NotificationDetailsWidget(
                imageBgColor: Color(0xffF4DFFC),
                imagePath: 'assets/images/workout_girl.png', 
                message: "Don't miss your lowerbody workout", 
                timeInfo: 'About 3 hours ago'
              ),
              Divider(color: Color(0xffc6c4d4),),
              NotificationDetailsWidget(
                imageBgColor: Color(0xffCCFEE5),
                imagePath: 'assets/images/step_pie.png', 
                message: "Hey, let’s add some meals for your breakfast", 
                timeInfo: 'About 3 hours ago'
              ),
              Divider(color: Color(0xffc6c4d4),),
              NotificationDetailsWidget(
                imageBgColor: Color(0xffCCFEEB),
                imagePath: 'assets/images/relaxing_boy.png', 
                message: "Congratulations, You have finished Afternoon task", 
                timeInfo: '29 May'
              ),
              Divider(color: Color(0xffc6c4d4),),
              NotificationDetailsWidget(
                imageBgColor: Color(0xffCCFEE9),
                imagePath: 'assets/images/step_pie.png', 
                message: "Hey, it's time for lunch", 
                timeInfo: '8 April'
              ),
              Divider(color: Color(0xffc6c4d4),),
              NotificationDetailsWidget(
                imageBgColor: Color(0xffF5E0FB),
                imagePath: 'assets/images/workout_girl.png', 
                message: "Ups, You have missed your Lowerbody", 
                timeInfo: '3 April'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

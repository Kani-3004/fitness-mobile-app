import 'package:fitness_mobile_app/screens/today_target_tracker_page.dart';
import 'package:fitness_mobile_app/widgets/activity_progress_targetpage.dart';
import 'package:fitness_mobile_app/widgets/latest_activity_targetpage.dart';
import 'package:flutter/material.dart';

class ActivityTrackerPage extends StatefulWidget {
  const ActivityTrackerPage({super.key});

  @override
  State<ActivityTrackerPage> createState() => _ActivityTrackerPageState();
}

class _ActivityTrackerPageState extends State<ActivityTrackerPage> {
  String selectedValue = 'Weekly'; // Default selected value
  final List<String> options = ['Weekly', 'Daily', 'Monthly'];
  @override
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

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
                  color: Color(0xffF7F8F8)),
              child: IconButton(
                onPressed: () {
                  
                },
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
              'Activity Tracker',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16.0),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF7F8F8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/Detail-Navs.png',
                    ),
                  )),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: screenHeight * 0.2,
                width: screenWidth,
                child: Card(
                  color: Color(0xffF6E2FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TodayTargetTrackerPage()
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Activity Progress',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showDropdownMenu(context);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff00f0ff),
                              Color(0xff00ff66)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedValue,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12),
                            ),
                            Icon(Icons.keyboard_arrow_down,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.25,
                width: screenWidth,
                child: Card(
                  color: Colors.white,
                  shadowColor: Color(0xfff7f8f8),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ActivityProgressTargetpage(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest Activity',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(
                          color: Color(0xffa5a3b0),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  LatestActivityTargetpage(
                    imagePath: 'assets/images/drinking_girl.png', 
                    message: 'Drinking 300ml Water', 
                    timeInfo: 'About 3 minutes ago', 
                    imageBgColor: Color(0xffB3FCEC)),
                  LatestActivityTargetpage(
                    imagePath: 'assets/images/eating_girl.png', 
                    message: 'Eat Snack (Fitbar)', 
                    timeInfo: 'About 10 minutes ago', 
                    imageBgColor: Color(0xffF0D3F6))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _showDropdownMenu(BuildContext context) async {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);

    List<String> filteredOptions =
        options.where((item) => item != selectedValue).toList();

    String? newValue = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx + 250,
        offset.dy + 310,
        offset.dx + 20,
        offset.dy + renderBox.size.height + (filteredOptions.length * 48),
      ),
      items: filteredOptions.map((String value) {
        return PopupMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: Color.fromARGB(255, 249, 250, 252), width: 1.5),
      ),
    );
    if (newValue != null) {
      setState(() {
        selectedValue = newValue;
      });
    }
  }
}


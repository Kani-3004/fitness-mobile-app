import 'package:flutter/material.dart';

class ActivityTrackerPage extends StatefulWidget {
  const ActivityTrackerPage({super.key});

  @override
  State<ActivityTrackerPage> createState() => _ActivityTrackerPageState();
}

class _ActivityTrackerPageState extends State<ActivityTrackerPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Activity Tracker Page"),
    );
  }
}

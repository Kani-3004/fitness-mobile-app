import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:fitness_mobile_app/screens/home_page_template.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class WorkoutSchedulePage extends StatefulWidget {
  const WorkoutSchedulePage({super.key});

  @override
  State<WorkoutSchedulePage> createState() => _WorkoutSchedulePageState();
}

class _WorkoutSchedulePageState extends State<WorkoutSchedulePage> {
  DateTime selectedDate = DateTime.now(); // Tracks selected date

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF7F8F8),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePageTemplate()),
                  );
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded, size: 15),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              textAlign: TextAlign.center,
              'Workout Schedule',
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
                  color: Color(0xffF7F8F8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/Detail-Navs.png'),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // EasyDateTimeLine (updates selectedDate)
              EasyDateTimeLine(
                headerProps: EasyHeaderProps(
                  showHeader: true,
                  centerHeader: true,
                  showSelectedDate: false,
                  monthPickerType: MonthPickerType.switcher,
                  dateFormatter: DateFormatter.custom("EEEE d"),
                  monthStyle: TextStyle(color: Colors.grey),
                ),
                initialDate: selectedDate, // Sync with selected date
                onDateChange: (newDate) {
                  setState(() {
                    selectedDate = newDate; // Update selected date
                  });
                },
                dayProps: EasyDayProps(
                  height: screenheight * 0.1,
                  dayStructure: DayStructure.dayStrDayNum,
                  activeDayStyle: DayStyle(
                    borderRadius: 15,
                    dayStrStyle: TextStyle(color: Colors.white, fontSize: 12),
                    dayNumStyle: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [Color(0xFFE391D5), Color(0xFFC355F2)],
                      ),
                    ),
                  ),
                  inactiveDayStyle: DayStyle(
                    borderRadius: 15,
                    dayStrStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    dayNumStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(20, 158, 158, 158),
                    ),
                  ),
                ),
              ),

              // SfCalendar (Updates when selectedDate changes)
              Expanded(
                child: SfCalendar(
                  view: CalendarView.day,
                  initialDisplayDate: selectedDate,
                  headerHeight: 0,
                  viewHeaderHeight: 0,
                  showDatePickerButton: false,
                  showWeekNumber: false,
                  showTodayButton: false,
                  showCurrentTimeIndicator: true,

                  cellBorderColor: const Color.fromARGB(50, 158, 158, 158),
                  backgroundColor: Colors.white,
                  timeSlotViewSettings: TimeSlotViewSettings(
                    timeFormat: 'hh:mm a',
                    timeRulerSize: screenheight * 0.075,
                    startHour: 05,
                    timeTextStyle: TextStyle(
                      color: const Color.fromARGB(178, 158, 158, 158),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  dataSource: MeetingDataSource(
                    getAppointmentsForDate(selectedDate),
                  ),
                  appointmentBuilder: (context, details) {
                    final Appointment appointment = details.appointments.first;
                    return Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: LinearGradient(
                          colors: [Color(0xFFE391D5), Color(0xFFC355F2)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(25, 0, 0, 0),
                            blurRadius: 6,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: screenheight * 0.02),
                          Expanded(
                            child: Text(
                              appointment.subject,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenheight * 0.012,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Appointment> getAppointmentsForDate(DateTime date) {
    return [
      Appointment(
        startTime: DateTime(date.year, date.month, date.day, 9, 0),
        endTime: DateTime(date.year, date.month, date.day, 10, 0),
        subject: "Upper Body Workout",
        color: Colors.blue,
      ),
      Appointment(
        startTime: DateTime(date.year, date.month, date.day, 19, 30),
        endTime: DateTime(date.year, date.month, date.day, 20, 30),
        subject: "Ab Workout",
        color: Colors.purple,
      ),
    ];
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}

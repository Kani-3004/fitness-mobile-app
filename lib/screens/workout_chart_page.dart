import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WorkoutChartPage extends StatefulWidget {
  const WorkoutChartPage({super.key});

  @override
  State<WorkoutChartPage> createState() => _WorkoutChartPageState();
}

class _WorkoutChartPageState extends State<WorkoutChartPage> {
  late List<PatientData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      color: Colors.transparent,
      canShowMarker: false,
      builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
          int seriesIndex) {
        if (seriesIndex == 0) {
          return _customTooltip(data.days, data.value, "Upperbody Workout");
        } else {
          return _customTooltip(data.days, data.dayv, "Lowerbody Workout");
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      tooltipBehavior: _tooltipBehavior,
      plotAreaBorderWidth: 0,
      series: [
        SplineSeries<PatientData, String>(
          dataSource: _chartData,
          enableTooltip: true,
          xValueMapper: (PatientData data, _) => data.days,
          yValueMapper: (PatientData data, _) => data.value,
          width: 2,
          color: Colors.white,
          opacity: 0.8,
        ),
        SplineSeries<PatientData, String>(
          dataSource: _chartData,
          enableTooltip: true,
          xValueMapper: (PatientData data, _) => data.days,
          yValueMapper: (PatientData data, _) => data.dayv,
          width: 2,
          color: Colors.white,
          opacity: 0.3,
        ),
      ],
      primaryXAxis: CategoryAxis(
        labelStyle: TextStyle(color: Colors.white, fontSize: 12),
        axisLine: AxisLine(width: 0),
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(size: 0),
      ),
      primaryYAxis: NumericAxis(
        labelFormat: '{value}%',
        labelStyle: TextStyle(color: Colors.white, fontSize: 12),
        axisLine: AxisLine(width: 0),
        minimum: 0,
        maximum: 100,
        interval: 20,
        majorGridLines: MajorGridLines(
          color: Colors.white.withValues(alpha: 0.3),
          width: 2,
        ),
        majorTickLines: MajorTickLines(size: 0),
        opposedPosition: true,
      ),
    );
  }

  Widget _customTooltip(String days, double value, String workoutType) {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$days, 28 May",
                  style: TextStyle(fontSize: 12, color: Color(0xffa5a3b0)),
                ),
                Row(
                  children: [
                    Text(
                      "${value.toInt()}%",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff42d742),
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(Icons.arrow_upward,
                        size: 12, color: Color(0xff42d742)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 4),
            Text(
              workoutType,
              style: TextStyle(
                color: Color(0xffa5a3b0),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 6),
            Container(
              width: 150,
              height: 7,
              decoration: BoxDecoration(
                color: Color(0xfff7f8f8),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: (value / 100) * 150,
                  height: 7,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff6b50f6), Color(0xffc58bf2)],
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<PatientData> getChartData() {
  return [
    PatientData('Sun', 40, 20),
    PatientData('Mon', 10, 60),
    PatientData('Tue', 90, 39),
    PatientData('Wed', 70, 42),
    PatientData('Thu', 25, 85),
    PatientData('Fri', 70, 42),
    PatientData('Sat', 40, 80),
  ];
}

class PatientData {
  PatientData(this.days, this.value, this.dayv);
  final String days;
  final double value;
  final double dayv;
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ActivityProgressTargetpage extends StatefulWidget {
  const ActivityProgressTargetpage({super.key});

  @override
  State<ActivityProgressTargetpage> createState() => _ActivityProgressTargetpageState();
}

class _ActivityProgressTargetpageState extends State<ActivityProgressTargetpage> {
  late List<PatientData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      series: <CartesianSeries>[
        ColumnSeries<PatientData, String>(
          dataSource: _chartData,
          xValueMapper: (PatientData data, _) => data.days,
          yValueMapper: (PatientData data, _) => data.value,
          width: 0.5,
          isTrackVisible: true,
          trackColor: Color(0xfff7f8f8),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          pointColorMapper: (PatientData data, int index) {
            return index.isEven ? Color(0xff00ff66) : Color(0xffc150f6);
          },
        ),
      ],
      primaryXAxis: CategoryAxis(
        labelStyle: TextStyle(color: Color(0xffB6B4C2)),
        axisLine: AxisLine(width: 0),
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(size: 0),
      ),
      primaryYAxis: NumericAxis(
        isVisible: false,
        maximum: 100,
        minimum: 0,
        axisLine: AxisLine(width: 0),
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(size: 0),
      ),
    );
  }
}

// 📊 **Chart Data**
List<PatientData> getChartData() {
  return [
    PatientData('Sun', 20),
    PatientData('Mon', 60),
    PatientData('Tue', 40),
    PatientData('Wed', 70),
    PatientData('Thu', 90),
    PatientData('Fri', 30),
    PatientData('Sat', 80),
  ];
}

class PatientData {
  PatientData(this.days, this.value);
  final String days;
  final double value;
}

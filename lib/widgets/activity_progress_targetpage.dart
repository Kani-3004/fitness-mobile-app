import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ActivityProgressTargetPage extends StatefulWidget {
  const ActivityProgressTargetPage({super.key});

  @override
  State<ActivityProgressTargetPage> createState() =>
      _ActivityProgressTargetPageState();
}

class _ActivityProgressTargetPageState extends State<ActivityProgressTargetPage> {
  late List<PatientData> _chartData;
  late double _maxValue;

  @override
  void initState() {
    _chartData = getChartData();
    _maxValue = _chartData
        .map((data) => data.value)
        .reduce((a, b) => a > b ? a : b);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    double maxBarHeight = screenHeight * 0.15;
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      series: <CartesianSeries>[
        ColumnSeries<PatientData, String>(
          dataSource: _chartData,
          xValueMapper: (PatientData data, _) => data.days,
          yValueMapper: (PatientData data, _) => data.value,
          width: 0.5,
          isTrackVisible: true,
          trackColor: const Color(0xfff7f8f8),
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          pointColorMapper: (_, index) => Colors.transparent, // Hide default bars
        ),
      ],
      annotations: _chartData.asMap().entries.map((entry) {
        int index = entry.key;
        PatientData data = entry.value;

        final List<Color> gradientColors = (index % 2 == 0)
            ? [const Color(0xff00f0ff), const Color(0xff00ff66)]
            : [const Color(0xffeea4ce), const Color(0xffc150f6)];

        return CartesianChartAnnotation(
          widget: GradientBar(
            width: screenWidth * 0.07,
            height: (data.value / _maxValue) * maxBarHeight, // Dynamic height scaling
            colors: gradientColors,
          ),
          coordinateUnit: CoordinateUnit.point,
          x: data.days,
          y: 0,
          verticalAlignment: ChartAlignment.far,
          horizontalAlignment: ChartAlignment.center,
        );
      }).toList(),
      primaryXAxis: CategoryAxis(
        labelStyle: const TextStyle(color: Color(0xffb6b4c2)),
        axisLine: const AxisLine(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
      ),
      primaryYAxis: NumericAxis(
        isVisible: false,
        maximum: 100,
        minimum: 0,
        axisLine: const AxisLine(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
      ),
    );
  }
}

List<PatientData> getChartData() {
  return [
    PatientData('Sun', 40),
    PatientData('Mon', 80),
    PatientData('Tue', 50),
    PatientData('Wed', 80),
    PatientData('Thu', 110),
    PatientData('Fri', 40),
    PatientData('Sat', 90),
  ];
}

class PatientData {
  PatientData(this.days, this.value);
  final String days;
  final double value;
}

class GradientBar extends StatelessWidget {
  final double width;
  final double height;
  final List<Color> colors;

  const GradientBar({
    super.key,
    required this.width,
    required this.height,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: colors,
        ),
      ),
    );
  }
}

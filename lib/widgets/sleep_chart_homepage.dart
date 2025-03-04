import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';

class SleepChartHomepage extends StatefulWidget {
  const SleepChartHomepage({super.key});

  @override
  State<SleepChartHomepage> createState() => _SleepChartHomepageState();
}

class _SleepChartHomepageState extends State<SleepChartHomepage> {
  late List<ChartData> _chartData;

  @override
  void initState() {
    super.initState();
    _chartData = _generateWaveData();
  }

  List<ChartData> _generateWaveData() {
    List<ChartData> data = [];
    for (double x = 0; x <= 100; x += 1) {
      double y1 = 5 + 10 * sin((x / 100) * 1 * pi); // Darker wave 1 (Lower)
      double y2 = 10 + 10 * sin((x / 100) * 1 * pi); // Darker wave 2 (Middle)
      double y3 = 15 + 10 * sin((x / 100) * 1 * pi); // Darker wave 3 (Higher)

      double y4 =
          15 + 10 * sin((x / 100) * 2 * pi + 3); // Lighter wave 1 (Higher)
      double y5 =
          10 + 10 * sin((x / 100) * 2 * pi + 3); // Lighter wave 2 (Middle)
      double y6 =
          5 + 10 * sin((x / 100) * 2 * pi + 3); // Lighter wave 3 (Lower)

      data.add(ChartData(x, y1, y2, y3, y4, y5, y6));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: NumericAxis(isVisible: false),
        primaryYAxis: NumericAxis(isVisible: false),
        series: <SplineSeries<ChartData, double>>[
          // Darker Waves (Opposite of lighter waves)
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y1,
            color: Colors.purple,
            width: 2,
          ),
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y2,
            color: Colors.purple,
            width: 2,
          ),
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y3,
            color: Colors.purple,
            width: 2,
          ),
          // Lighter Waves (Opposite of darker waves)
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y4,
            color: Colors.purple.withOpacity(0.3),
            width: 2,
          ),
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y5,
            color: Colors.purple.withOpacity(0.3),
            width: 2,
          ),
          SplineSeries<ChartData, double>(
            dataSource: _chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y6,
            color: Colors.purple.withOpacity(0.3),
            width: 2,
          ),
        ],
      ),
    );
  }
}

class ChartData {
  final double x, y1, y2, y3, y4, y5, y6;
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4, this.y5, this.y6);
}

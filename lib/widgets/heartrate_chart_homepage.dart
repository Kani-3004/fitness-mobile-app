import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HeartrateChartHomepage extends StatefulWidget {
  const HeartrateChartHomepage({super.key});

  @override
  State<HeartrateChartHomepage> createState() => _HeartrateChartHomepageState();
}

class _HeartrateChartHomepageState extends State<HeartrateChartHomepage> {
  List<HeartRateData> chartData = [
    HeartRateData(0, 72),
    HeartRateData(1, 78),
    HeartRateData(2, 85),
    HeartRateData(3, 70),
    HeartRateData(4, 90),
    HeartRateData(5, 65),
    HeartRateData(6, 88),
    HeartRateData(7, 74),
    HeartRateData(8, 95),
    HeartRateData(9, 68),
  ];
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();
    tooltipBehavior = TooltipBehavior(
      enable: true,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      shouldAlwaysShow: false,
      canShowMarker: false,
      tooltipPosition: TooltipPosition.auto,
      builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
          int seriesIndex) {
        return Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(
              colors: [
                Color(0xFF805DF5),
                Color(0xFFA675F0),
                // Colors.transparent,
                // Colors.transparent
              ],
            ),
          ),
          child: Center(
            child: Text(
              '$pointIndex mins ago',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      enableMultiSelection: false,
      backgroundColor: Colors.transparent,
      plotAreaBorderWidth: 0,
      primaryXAxis: NumericAxis(isVisible: false),
      primaryYAxis: NumericAxis(isVisible: false),
      margin: EdgeInsets.all(0),
      tooltipBehavior: tooltipBehavior,
      series: <CartesianSeries<HeartRateData, int>>[
        AreaSeries<HeartRateData, int>(
          dataSource: chartData,
          xValueMapper: (HeartRateData data, _) => data.time,
          yValueMapper: (HeartRateData data, _) => data.bpm,
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 137, 84, 147).withOpacity(0.4),
              const Color.fromARGB(255, 82, 107, 169).withOpacity(0.2),
              Colors.transparent,
            ],
            stops: [0.0, 0.6, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderColor: Color(0xFFD47AE6),
          borderWidth: 1.5,
          markerSettings: MarkerSettings(isVisible: false),
        ),
      ],
    );
  }
}

class HeartRateData {
  final int time;
  final double bpm;
  HeartRateData(this.time, this.bpm);
}

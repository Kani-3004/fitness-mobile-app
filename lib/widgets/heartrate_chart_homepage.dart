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
    HeartRateData(1, 85),
    HeartRateData(2, 60),
    HeartRateData(3, 95),
    HeartRateData(4, 78),
    HeartRateData(5, 110),
    HeartRateData(6, 65),
    HeartRateData(7, 102),
    HeartRateData(8, 88),
    HeartRateData(9, 74),
    HeartRateData(10, 120),
    HeartRateData(11, 80),
    HeartRateData(12, 99),
    HeartRateData(13, 66),
    HeartRateData(14, 108),
    HeartRateData(15, 73),
    HeartRateData(16, 115),
    HeartRateData(17, 69),
    HeartRateData(18, 94),
    HeartRateData(19, 76),
    HeartRateData(20, 105),
    HeartRateData(21, 68),
    HeartRateData(22, 112),
    HeartRateData(23, 71),
    HeartRateData(24, 98),
    HeartRateData(25, 79),
    HeartRateData(26, 125),
    HeartRateData(27, 67),
    HeartRateData(28, 90),
    HeartRateData(29, 82),
  ];

  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();
    tooltipBehavior = TooltipBehavior(
      enable: true,
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      shouldAlwaysShow: true,
      canShowMarker: false,
      tooltipPosition: TooltipPosition.pointer,
      activationMode: ActivationMode.singleTap,
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
              Color(0x66895493),
              const Color(0x33526BA9),
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

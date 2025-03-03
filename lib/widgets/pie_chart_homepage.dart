import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartHomepage extends StatefulWidget {
  const PieChartHomepage({super.key});

  @override
  State<PieChartHomepage> createState() => _PieChartHomepageState();
}

class _PieChartHomepageState extends State<PieChartHomepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SfCircularChart(
              series: <PieSeries<ChartData, String>>[
                PieSeries<ChartData, String>(
                  dataSource: _getChartData(),
                  xValueMapper: (ChartData data, _) => data.label,
                  yValueMapper: (ChartData data, _) => data.value,
                  pointColorMapper: (ChartData data, _) => data.color,
                  explode: true,
                  explodeIndex: 5,
                  explodeOffset: "10%",
                ),
              ],
            ),
            Positioned(
              top: 27,
              right: 28,
              child: Text(
                '20,1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<ChartData> _getChartData() {
    return [
      ChartData('Highlighted', 20, Colors.transparent),
      ChartData('Base', 58, Colors.white),
    ];
  }
}

class ChartData {
  final String label;
  final double value;
  final Color color;

  ChartData(this.label, this.value, this.color);
}

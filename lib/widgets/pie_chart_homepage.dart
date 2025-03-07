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
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        child: SfCircularChart(
          series: <PieSeries<ChartData, String>>[
            PieSeries<ChartData, String>(
              dataSource: _getChartData(),
              xValueMapper: (ChartData data, _) => data.label,
              yValueMapper: (ChartData data, _) => data.value,
              pointColorMapper: (ChartData data, _) => data.color,
              pointRadiusMapper: (ChartData data, _) => data.radius,
              explode: true,
              explodeIndex: 0,
              explodeOffset: "0%",
              endAngle: 360,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
                labelPosition: ChartDataLabelPosition.inside,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.025,
                  fontWeight: FontWeight.w900,
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
      ChartData(
        'Highlighted',
        20.1,
        Color.fromARGB(255, 236, 154, 222),
        '115%',
      ),
      ChartData('Base', 58, Colors.white, '100%'),
    ];
  }
}

class ChartData {
  final String label;
  final double value;
  final Color color;
  final String radius;

  ChartData(this.label, this.value, this.color, this.radius);
}

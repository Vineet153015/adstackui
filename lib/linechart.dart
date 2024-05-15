import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:adstackui/chart.dart';

class LinearCharWidget extends StatelessWidget {
  final List<Chartui> points;
  const LinearCharWidget({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 2,
      child: LineChart(LineChartData(lineBarsData: [
        LineChartBarData(spots: chartui.map((e) => FlSpot(e.x, e.y)).toList(),
        isCurved: true,
        dotData: FlDotData(show: true)
        )
      ])),
    );
  }
}

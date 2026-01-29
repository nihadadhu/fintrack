import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class RevenueSparkLine extends StatelessWidget {
  RevenueSparkLine({super.key});

  final List<double> revenueData = [
    420, 480, 460, 430, 390,
    410, 450, 470, 440, 400,
    380, 420, 440, 460, 430,
    390, 350, 320, 360, 420,
    520, 580, 540, 500, 470,
    430, 390, 420, 460, 510
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: revenueData.length.toDouble() - 1,
          minY: revenueData.reduce((a, b) => a < b ? a : b) - 50,
          maxY: revenueData.reduce((a, b) => a > b ? a : b) + 50,
          lineBarsData: [
            LineChartBarData(
              spots: List.generate(
                revenueData.length,
                (index) => FlSpot(index.toDouble(), revenueData[index]),
              ),
              isCurved: true,
              curveSmoothness: 0.35,
              color: Colors.redAccent,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    Colors.redAccent.withOpacity(0.4),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
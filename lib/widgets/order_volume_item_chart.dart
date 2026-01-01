import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class OrderVolumeItemChart extends StatelessWidget {
  const OrderVolumeItemChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
        LineChartData(
          minY: 0,
          maxY: 4000,
          // Grid dashed
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                // ignore: deprecated_member_use
                color: Colors.grey.withOpacity(0.3),
                strokeWidth: 1,
                dashArray: [6, 6],
              );
            },
          ),

          // Borders
          borderData: FlBorderData(
            show: true,
            border: const Border(
              left: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
            ),
          ),

          // Axis titles
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1000,
                getTitlesWidget: (value, meta) {
                  return Text(
                    "${value ~/ 1000}k",
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  );
                },
              ),
            ),

            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 1,
                getTitlesWidget: (value, meta) {
                  final labels = ['01', '02', '03', '04', '05', '06'];
                  return Text(
                    labels[value.toInt()],
                    style: const TextStyle(color: Colors.grey),
                  );
                },
              ),
            ),
          ),

          // Lines
          lineBarsData: [
            // Purple line
            LineChartBarData(
              isCurved: false,
              color: const Color(0xFF6C63FF),
              barWidth: 4,
              dotData: const FlDotData(show: false),
              spots: const [
                FlSpot(0, 1600),
                FlSpot(1, 1300),
                FlSpot(2, 3200),
                FlSpot(3, 2000),
                FlSpot(4, 1600),
                FlSpot(5, 3300),
              ],
            ),

            // Yellow line
            LineChartBarData(
              isCurved: false,
              color: const Color(0xFFFFD600),
              barWidth: 4,
              dotData: const FlDotData(show: false),
              spots: const [
                FlSpot(0, 2200),
                FlSpot(1, 4100),
                FlSpot(2, 1500),
                FlSpot(3, 3800),
                FlSpot(4, 2300),
                FlSpot(5, 2600),
              ],
            ),
          ],
        ),
      
    );
  }
}

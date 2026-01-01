import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SalesSammaryItemChart extends StatelessWidget {
  const SalesSammaryItemChart({super.key});

  @override
  Widget build(BuildContext context) {
    return  BarChart(
        BarChartData(
          maxY: 100,
          barTouchData: BarTouchData(enabled: false),
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: 25,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey.withOpacity(0.2),
                strokeWidth: 1,
                dashArray: [4, 4],
              );
            },
          ),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      '0${value.toInt() + 1}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          barGroups: _barGroups(),
          groupsSpace: 20,
        ),
      
    );
  }

  List<BarChartGroupData> _barGroups() {
    final blue = const Color(0xFF6C63FF);
    final yellow = const Color(0xFFFFD600);

    final data = [
      [70, 45],
      [55, 70],
      [65, 35],
      [50, 65],
      [80, 55],
      [90, 45],
      [70, 45],
      [55, 70],
      [65, 35],
    ];

    return List.generate(data.length, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: data[index][0].toDouble(),
            color: blue,
            width: 6,
            borderRadius: BorderRadius.circular(2),
          ),
          BarChartRodData(
            toY: data[index][1].toDouble(),
            color: yellow,
            width: 6,
            borderRadius: BorderRadius.circular(2),
          ),
        ],
      );
    });
  }
}

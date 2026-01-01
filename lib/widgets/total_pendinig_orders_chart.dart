import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class TotalPendinigOrdersChart extends StatelessWidget {
  const TotalPendinigOrdersChart({super.key});

  final List<double> values = const [8, 5, 2, 10];
  final List<String> labels = const ["T", "W", "T", "F"];
  final Color barColor = const Color(0xFF7B6EF6);

  @override
  Widget build(BuildContext context) {
    return BarChart(
        BarChartData(
          maxY: 12,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),

          titlesData: FlTitlesData(
            topTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() >= values.length) return const SizedBox();
                  return Text(values[value.toInt()].toInt().toString(),
                      style: AppStyles.style10SemiBold(context)
                          .copyWith(fontSize: 11));
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (value, meta) {
                  if (value.toInt() >= labels.length) return const SizedBox();
                  return Text(labels[value.toInt()],
                      style: AppStyles.style10Regular(context)
                          .copyWith(fontSize:  11));
                },
              ),
            ),
            leftTitles: const AxisTitles(),
            rightTitles: const AxisTitles(),
          ),

          barGroups: List.generate(values.length, (i) {
            return BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(
                  toY: values[i],
                  width: 10,
                  borderRadius: BorderRadius.circular(6),
                  color: barColor,
                ),
              ],
            );
          }),
        ),
    
    );
  }
}

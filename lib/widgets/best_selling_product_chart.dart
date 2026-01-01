import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class BestSellingProductChart extends StatelessWidget {
  final double percent; // مثال: 71

  const BestSellingProductChart({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    return     Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 50,
              sections: [
                PieChartSectionData(
                  value: percent,
                  color: const Color(0xFF6C63FF), // بنفسجي غامق
                  radius: 16,
                  showTitle: false,
                ),
      
                PieChartSectionData(
                  value: 100 - percent,
                  color: const Color(0xFFD6D4FF), // بنفسجي فاتح
                  radius: 16,
                  showTitle: false,
                ),
              ],
            ),
          ),
         //// Text in the middle
          Text(
            "${percent.toInt()}%",
            style:AppStyles.style16SemiBold(context)
          ),
        ],
      
    );
  }
}

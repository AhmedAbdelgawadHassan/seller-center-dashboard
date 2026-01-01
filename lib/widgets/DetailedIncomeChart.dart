import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children:[
        Text('Rejected\nProducts',style: AppStyles.style9Bold(context),),
         AspectRatio(
        aspectRatio: 1,
        child: PieChart(getChartData()),
      ),
    ]);
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;   // -1 means no section is selected (inActive)
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,  // null means default position
          title: activeIndex == 0 ? 'Mising Image' : '40%',
          titleStyle: AppStyles.style16SemiBold(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          radius: activeIndex == 0 ? 35 : 30,
          value: 40,
          color:  Colors.yellow,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.4 : null,
          titleStyle: AppStyles.style16SemiBold(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          title: activeIndex == 1 ? 'Poor Quality' : '60%',
          value: 60,
          radius: activeIndex == 1 ? 35 : 30,
          color: const Color(0xff7266ED),
        ),
      
      ],
    );
  }
}

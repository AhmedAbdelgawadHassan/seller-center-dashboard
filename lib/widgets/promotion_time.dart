import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart' show AppStyles;
import 'package:seller_center_dashboard/widgets/promotion_time_container.dart';

class PromotionTime extends StatelessWidget {
  const PromotionTime({super.key, required this.days, required this.hours, required this.minutes, required this.color});
  final String days;
  final String hours;
  final String minutes;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[ Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
        PromotionTimeContainer(number: days,color: color,),
        Gap(2),
        _dots(),
        Gap(2),
         PromotionTimeContainer(number: hours,color: color,),
        Gap(2),
        _dots(),
        Gap(2),
         PromotionTimeContainer(number: minutes,color: color,),
       ],
        ),
        Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Days',style: AppStyles.style12Bold(context),),
            Gap(12),
            Text('Hours',style: AppStyles.style12Bold(context),),
            Gap(12),
            Text('Mins',style: AppStyles.style12Bold(context),),
          ],
        )
   ] );
    
  }


  Widget _dots() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [TimeDot(), Gap(6), TimeDot()],
    );
  }
}

class TimeDot extends StatelessWidget {
  const TimeDot({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 3,
      height: 4.5,
      decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}

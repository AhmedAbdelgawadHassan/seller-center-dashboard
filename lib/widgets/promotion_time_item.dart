import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/widgets/promotion_time.dart';

class PromotionTimeItem extends StatelessWidget {
  const PromotionTimeItem({super.key, required this.days, required this.hours, required this.minutes, required this.color,});
  final String days;
  final String hours;
  final String minutes;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image(image: AssetImage(AppAssets.promotion)),
        Positioned(
          child: PromotionTime(
            color:color ,
            days: days,
            hours: hours,
            minutes: minutes,
        )),
      ],
    );
  }
}

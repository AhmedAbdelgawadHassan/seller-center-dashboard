import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class PromotionTimeContainer extends StatelessWidget {
  const PromotionTimeContainer({super.key, required this.number, required this.color});
  final String number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(number,style: AppStyles.style25Bold(context)),
    );
  }
}

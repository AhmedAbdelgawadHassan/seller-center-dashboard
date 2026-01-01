import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class DealsStatus extends StatelessWidget {
  const DealsStatus({super.key, required this.color, required this.containerChild, required this.title});
  final Color color;
  final String containerChild;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

      Text(title,style: AppStyles.style10Medium(context).copyWith(color: color),),
      Gap(7),
        Container(
          padding: EdgeInsets.symmetric(vertical: 3,horizontal: 7),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: color,width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(containerChild,style: AppStyles.style10Medium(context)),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';
import 'package:seller_center_dashboard/widgets/order_volume_item_chart.dart';

class OrderVolumeItem extends StatelessWidget {
  const OrderVolumeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: CustombackgroundContainer(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sales Summary', style: AppStyles.style15Bold(context)),
                Spacer(),
                Text('View Report', style: AppStyles.style8Medium(context)),
                Gap(5),
                Transform.rotate(
                  angle: -3.14 / 2,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                    color: Color(0xffDBDADE),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text('3K', style: AppStyles.style20Bold(context)),
                Gap(10),
                Icon(Icons.arrow_downward,size: 15,color: Colors.red,),
                Text('2.1%',style: AppStyles.style12Regular(context).copyWith(color: Colors.red),),
                Gap(10),
                Text('vs Last Week',style: AppStyles.style12SemiBold(context),)
                ]),
                Gap(20),
                 Expanded(child: OrderVolumeItemChart()),   // line chart
                 Gap(10),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 12,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF6C63FF),
                        shape: BoxShape.circle
                      ),
                    ),
                    Gap(5),
                    Text('This Week',style: AppStyles.style11Regular(context),),
                    Gap(20),
                    Container(
                      width: 12,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFD600),
                        shape: BoxShape.circle
                      ),
                    ),
                    Gap(5),
                    Text('Last Week',style: AppStyles.style11Regular(context),)
                  ],
                 )
      
          ],
        ),
      ),
    );
  }
}

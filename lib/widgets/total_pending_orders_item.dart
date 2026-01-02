import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';
import 'package:seller_center_dashboard/widgets/total_pendinig_orders_chart.dart';

class TotalPendingOrdersItem extends StatelessWidget {
  const TotalPendingOrdersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.5,
      child: CustombackgroundContainer(
            padding: EdgeInsets.all( 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("Total Pending\nOrders",
                          style: AppStyles.style15Bold(context).copyWith(
                            
                          )),
                    ),
                    const Spacer(),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("10",
                          style: AppStyles.style15Bold(context)),
                    ),
                  ],
                ),
      
                const Gap(4),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("Today",
                      style: AppStyles.style10Regular(context).copyWith(color: Colors.grey)),
                ),
      
                Gap( 18),
                Expanded(child: TotalPendinigOrdersChart()),  /// chart
                const Divider(thickness: 1),
                Gap( 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text("Current Daily Order",
                              style: AppStyles.style12Bold(context)),
                        ),
                        const Gap(6),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text("Volume Limitation",
                              style: AppStyles.style10Light(context)),
                        ),
                      ],
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("100",
                          style: AppStyles.style12Bold(context)),
                    ),
                  ],
                ),
              ],
            ),
          
        
      ),
    );
  }
}

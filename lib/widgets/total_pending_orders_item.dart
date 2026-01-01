import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';
import 'package:seller_center_dashboard/widgets/total_pendinig_orders_chart.dart';

class TotalPendingOrdersItem extends StatelessWidget {
  const TotalPendingOrdersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        double w = c.maxWidth;

        bool isSmall = w < 420;
        bool isMedium = w < 700;

        return CustombackgroundContainer(
          padding: EdgeInsets.all(isSmall ? 12 : 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Header
              Row(
                children: [
                  Text("Total Pending\nOrders",
                      style: AppStyles.style11ExtraBold(context).copyWith(
                        fontSize: isSmall ? 11 : isMedium ? 13 : 15,
                      )),
                  const Spacer(),
                  Text("10",
                      style: AppStyles.style15Bold(context).copyWith(
                        fontSize: isSmall ? 15 : 18,
                      )),
                ],
              ),

              const Gap(4),
              Text("Today",
                  style: AppStyles.style8Regular(context).copyWith(
                    fontSize: isSmall ? 8 : 10,
                  )),

              Gap(isSmall ? 10 : 18),
              TotalPendinigOrdersChart(isSmall: isSmall),

              const Divider(thickness: 1),

              Gap(isSmall ? 10 : 14),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Current Daily Order",
                          style: AppStyles.style12Bold(context).copyWith(
                            fontSize: isSmall ? 11 : 13,
                          )),
                      const Gap(6),
                      Text("Volume Limitation",
                          style: AppStyles.style10Light(context).copyWith(
                            fontSize: isSmall ? 9 : 11,
                          )),
                    ],
                  ),
                  Text("100",
                      style: AppStyles.style12Bold(context).copyWith(
                        fontSize: isSmall ? 13 : 16,
                      )),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

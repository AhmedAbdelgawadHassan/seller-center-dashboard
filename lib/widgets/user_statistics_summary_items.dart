import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/order_volume_item.dart';
import 'package:seller_center_dashboard/widgets/sales_summary_item.dart';

class UserStatisticsSummaryItems extends StatelessWidget {
  const UserStatisticsSummaryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: OrderVolumeItem()),
        Gap(20),
        Expanded(child: SalesSummaryItem()),

      ],
    );
  }
}
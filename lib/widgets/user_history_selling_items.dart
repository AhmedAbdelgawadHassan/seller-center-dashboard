import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/best_selling_product_item.dart';
import 'package:seller_center_dashboard/widgets/new_product_item.dart';
import 'package:seller_center_dashboard/widgets/total_pending_orders_item.dart';
import 'package:seller_center_dashboard/widgets/your_rating_item.dart';

class UserHistorySellingItems extends StatelessWidget {
  const UserHistorySellingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TotalPendingOrdersItem()),
        Gap(20),
        Expanded(child: BestSelleingProductItem()),
        Gap(20),
        Expanded(child: YourRatingItem()),
        Gap(20),
        Expanded(child: NewProductItem()),

      ],
    );
  }
}
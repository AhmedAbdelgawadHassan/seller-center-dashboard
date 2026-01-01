import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/promotion_details_listview.dart';
import 'package:seller_center_dashboard/widgets/promotion_listtile.dart';

class PromotiomDetails extends StatelessWidget {
  const PromotiomDetails({super.key, required this.promotionItems});
  final List<PromotionListtile> promotionItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
     PromotionDetailsListview(promotionItems:promotionItems),
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Seller: 0',style: AppStyles.style11SemiBold(context).copyWith(color: Colors.black),),
        // Spacer(),
        Text('Products: 0',style: AppStyles.style11SemiBold(context).copyWith(color: Colors.black),),
      ],
     )
      ],
    );
  }
}
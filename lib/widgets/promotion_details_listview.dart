import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/widgets/propotion_listtile.dart';

class PromotionDetailsListview extends StatelessWidget {
  const PromotionDetailsListview({super.key, required this.promotionItems});
  final List<PropotionListtile> promotionItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: promotionItems[index],
      ),
      itemCount: promotionItems.length,
    );
  }
}

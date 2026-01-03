import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/mobile_promotion_pageview.dart';

class MobilePromotionSection extends StatelessWidget {
  const MobilePromotionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Promotions', style: AppStyles.style20Bold(context)),
        Gap(5),
        MobilePromotionPageview(),
      ],
    );
  }
}
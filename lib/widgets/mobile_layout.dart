import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:seller_center_dashboard/widgets/best_selling_product_item.dart';
import 'package:seller_center_dashboard/widgets/mobile_announcement_section.dart';
import 'package:seller_center_dashboard/widgets/mobile_appbar.dart';
import 'package:seller_center_dashboard/widgets/mobile_catalog_performance_section.dart';
import 'package:seller_center_dashboard/widgets/mobile_promotion_section.dart';
import 'package:seller_center_dashboard/widgets/new_product_item.dart';
import 'package:seller_center_dashboard/widgets/total_pending_orders_item.dart';
import 'package:seller_center_dashboard/widgets/your_rating_item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.iconMenuOnTap});
  final VoidCallback iconMenuOnTap; 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MobileAppbar(
            iconMenuOnTap: iconMenuOnTap,
          ),
          Gap(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: MobilePromotionSection(),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(child: TotalPendingOrdersItem()),
                    Gap(10),
                    Expanded(child: BestSelleingProductItem()),
                  ],
                ),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(child: YourRatingItem()),
                    Gap(10),
                    Expanded(child: NewProductItem()),
                  ],
                ),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: MobileCatalogPerformanceSection(),
              ),
              Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: MobileAnnouncementSection()),
             
            ],
          ),
        ],
      ),
    );
  }
}

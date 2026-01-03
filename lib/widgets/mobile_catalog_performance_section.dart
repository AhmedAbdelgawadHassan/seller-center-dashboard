import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/order_volume_item.dart';
import 'package:seller_center_dashboard/widgets/sales_summary_item.dart';

class MobileCatalogPerformanceSection extends StatelessWidget {
  const MobileCatalogPerformanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Catalog Performance', style: AppStyles.style20Bold(context)),
        Gap(10),
        OrderVolumeItem(),
        Gap(10),
        SalesSummaryItem()
     
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/promotion_item.dart';
import 'package:seller_center_dashboard/widgets/promotion_listtile.dart';

class PromotionSection extends StatelessWidget {
  const PromotionSection({super.key});
  static List<PromotionItem> promotionItems = [
    PromotionItem(
      color: Color.fromARGB(255, 166, 156, 247),
      days: '05',
      hours: '16',
      minutes: '21',
      title:
          'Lifestyle:  3.3 PAYDAY 2022    15% off min spend SGD 100   HOME10',
      promotionDetailsItems: [
        PromotionListtile(title: '28 Feb - 07 Mar 22', image: AppAssets.calendar),
        PromotionListtile(title: 'Voucher discount: 10%', image: AppAssets.path),
        PromotionListtile(title: 'Registration until: 22 Feb 22', image: AppAssets.checkup),
        PromotionListtile(title: 'Seller funded portion: 100% out of the discount', image: AppAssets.tags),
        ],
    ),
     PromotionItem(
      color: Color.fromARGB(255, 246, 189, 136),
      days: '17',
      hours: '21',
      minutes: '47',
      title:
          'Lifestyle:  3.3 PAYDAY 2022    15% off min spend SGD 100   HOME10',
      promotionDetailsItems: [
        PromotionListtile(title: '28 Feb - 07 Mar 22', image: AppAssets.calendar),
        PromotionListtile(title: 'Voucher discount: 10%', image: AppAssets.path),
        PromotionListtile(title: 'Registration until: 22 Feb 22', image: AppAssets.checkup),
        PromotionListtile(title: 'Seller funded portion: 100% out of the discount', image: AppAssets.tags),
        ],
    ),
     PromotionItem(
      color: Color.fromARGB(255, 245, 84, 207),
      days: '03',
      hours: '16',
      minutes: '21',
      title:
          "[CRM Campaign] Sports 30% + 10% CB (TGIF30)",
      promotionDetailsItems: [
        PromotionListtile(title: '18 Feb  22', image: AppAssets.calendar),
        PromotionListtile(title: 'Voucher discount: 30%', image: AppAssets.path),
        PromotionListtile(title: 'Registration until: 22 Feb 22', image: AppAssets.checkup),
        PromotionListtile(title: 'Seller funded portion: 85% out of the discount', image: AppAssets.tags),
        ],
    ),
     PromotionItem(
      color: Color.fromARGB(255, 250, 152, 60),
      days: '27',
      hours: '02',
      minutes: '11',
      title:
          'Lifestyle:  3.3 PAYDAY 2022    15% off min spend SGD 100   HOME10',
      promotionDetailsItems: [
        PromotionListtile(title: '28 Feb - 07 Mar 22', image: AppAssets.calendar),
        PromotionListtile(title: 'Voucher discount: 10%', image: AppAssets.path),
        PromotionListtile(title: 'Registration until: 22 Feb 22', image: AppAssets.checkup),
        PromotionListtile(title: 'Seller funded portion: 100%  out of the discount', image: AppAssets.tags),
        ],
    ),
     PromotionItem(
      color: Color.fromARGB(255, 244, 98, 100),
      days: '26',
      hours: '09',
      minutes: '46',
      title:
          "[CRM Campaign] Sports 30% + 10% CB (TGIF30)",
      promotionDetailsItems: [
        PromotionListtile(title: '18 Feb  22', image: AppAssets.calendar),
        PromotionListtile(title: 'Voucher discount: 30%', image: AppAssets.path),
        PromotionListtile(title: 'Registration until: 22 Feb 22', image: AppAssets.checkup),
        PromotionListtile(title: 'Seller funded portion: 85% out of the discount', image: AppAssets.tags),
        ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return 
    CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Gap(10) ),
          SliverToBoxAdapter(child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Coming Soon', style: AppStyles.style12Bold(context)),
            Text('End Soon', style: AppStyles.style12Bold(context)),
            Text('Promotion List', style: AppStyles.style12Bold(context)),
          ],
        ), 

        ),
        SliverToBoxAdapter(
          child: Gap(10),
        ),
        SliverToBoxAdapter(
          child:         Column(children: promotionItems.map((e) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: e,
        )).toList()),
        )

      ],
    );
    
    
  }}
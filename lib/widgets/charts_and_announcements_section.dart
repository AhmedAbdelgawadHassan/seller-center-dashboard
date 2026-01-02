import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/announcement_section.dart';
import 'package:seller_center_dashboard/widgets/user_history_selling_items.dart';
import 'package:seller_center_dashboard/widgets/user_statistics_summary_items.dart';

class ChartsAndAnnouncementsSection extends StatelessWidget {
  const ChartsAndAnnouncementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(37),
        UserHistorySellingItems(),
        Gap(20),
         UserStatisticsSummaryItems(),
         Gap(20),
         AnnouncementSection()

      ],
    );
    // CustomScrollView(
    //   slivers: [
    //     SliverToBoxAdapter(
    //       child:  Gap(10) ,
    //     ),
    //     SliverToBoxAdapter(
    //       child:UserHistorySellingItems(), 
    //     ),
    //      SliverToBoxAdapter(
    //       child:  Gap(15) ,
    //     ),
    //     SliverToBoxAdapter(
    //       child:  UserStatisticsSummaryItems(),
    //     ),
    //     SliverToBoxAdapter(
    //       child: Gap(10),
    //     ),
    //     SliverToBoxAdapter(
    //       child: AnnouncementSection(),
    //     )
    //   ],
    // );
 
  }}
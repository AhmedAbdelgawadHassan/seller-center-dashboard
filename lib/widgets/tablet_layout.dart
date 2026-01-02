import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/charts_and_announcements_section.dart';
import 'package:seller_center_dashboard/widgets/promotion_section.dart';
import 'package:seller_center_dashboard/widgets/tablet_sidebar.dart';
import 'package:seller_center_dashboard/widgets/user_search_appbar.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 70, child: TabletSidebar()),   // Sidebar has fixed width even if width of screen is increased or decreased
        Gap(10),
        Expanded(
          flex: 14,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(15),
                UserSearchAppbar(),
                Gap(15),
                Row(
                  children: [Expanded(child: ChartsAndAnnouncementsSection())],
                ),
                PromotionSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

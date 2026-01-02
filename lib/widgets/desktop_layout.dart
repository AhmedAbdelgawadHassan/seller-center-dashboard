import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/charts_and_announcements_section.dart';
import 'package:seller_center_dashboard/widgets/custom_sidebar.dart';
import 'package:seller_center_dashboard/widgets/promotion_section.dart';
import 'package:seller_center_dashboard/widgets/user_search_appbar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomSidebar(),
        ),
        Gap(10),
        Expanded(
          flex: 6,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                UserSearchAppbar(),
                Gap(0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: ChartsAndAnnouncementsSection(),
                    ),
                    Gap(20),
                    Expanded(
                      flex: 2,
                      child: PromotionSection(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/announcement_section.dart';

class MobileAnnouncementSection extends StatelessWidget {
  const MobileAnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Announcements', style: AppStyles.style20Bold(context)),
        Gap(10),
         AnnouncementSection()
        ],
    );
  }
}

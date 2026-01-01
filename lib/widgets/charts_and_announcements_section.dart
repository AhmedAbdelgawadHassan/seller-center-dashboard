import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/user_history_selling_items.dart';

class ChartsAndAnnouncementsSection extends StatelessWidget {
  const ChartsAndAnnouncementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30),
       UserHistorySellingItems()  // all charts in Row
       
      ],
    );
  }
}
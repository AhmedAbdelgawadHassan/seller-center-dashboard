import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/announcement_pageview.dart';
import 'package:seller_center_dashboard/widgets/customTextField.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustombackgroundContainer(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical:10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Announcements',
                    style: AppStyles.style20Bold(context),
                  ),
                ),
                Expanded(child: Customtextfield()),
                Gap(10),
                SvgPicture.asset(AppAssets.searchMenu),
              ],
            ),
          ),
          Gap(5),
          AnnouncementPageview()
          
        ],
      ),
    );
  }
}

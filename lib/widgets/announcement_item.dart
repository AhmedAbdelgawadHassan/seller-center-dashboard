import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seller_center_dashboard/models/announcement_model.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class AnnouncementItem extends StatelessWidget {
  const AnnouncementItem({super.key, required this.announcementModel});
  final AnnouncementModel announcementModel ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height:0 ,
        ),
        ListTile(
          
          leading: Text(announcementModel.date,style: AppStyles.style13SemiBold(context)),
          title:Text(announcementModel.title,style: AppStyles.style12Medium(context)),
          subtitle: Text(announcementModel.description,style: AppStyles.style12Medium(context)),
          trailing: SvgPicture.asset(AppAssets.gmailNotification),
        ),
         Divider(
          height:0 ,
        ),
      ],
    );
  }
}
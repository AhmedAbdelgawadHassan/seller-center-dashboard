import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';
import 'package:seller_center_dashboard/widgets/deal_status_row.dart';
import 'package:seller_center_dashboard/widgets/promotiom_details.dart';
import 'package:seller_center_dashboard/widgets/promotion_time_item.dart';
import 'package:seller_center_dashboard/widgets/propotion_listtile.dart';

class PromotionItem extends StatelessWidget {
  const PromotionItem({super.key, required this.days, required this.hours, required this.minutes, required this.promotionDetailsItems, required this.title, required this.color});
  final String days, hours, minutes;
final List<PropotionListtile> promotionDetailsItems;
final String title;
final Color color;
  @override
  Widget build(BuildContext context) {
    return CustombackgroundContainer(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,style: AppStyles.style12Bold(context),),
          Gap(20),
          Row(
            children: [
              Expanded(child: PromotionTimeItem(days: days, hours: hours, minutes: minutes,color: color,)),
              Gap(10),
              Expanded(child: PromotiomDetails(
                promotionItems: promotionDetailsItems,
              )),
            ],
          ),
          Gap(20),
          ////Button
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff403C4E),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                  ),
                  onPressed: () {
                }, child: Text('Join the Promotion',style: AppStyles.style15Regular(context).copyWith(color: Colors.white),)),
              ),
            ],
          ),
          Gap(20),
        DealStatusRow()
        ],
      ), );
  }
}
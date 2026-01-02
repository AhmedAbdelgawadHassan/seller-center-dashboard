import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';
import 'package:seller_center_dashboard/widgets/your_rating_item_chart.dart';

class YourRatingItem extends StatelessWidget {
  const YourRatingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.5,
      child: CustombackgroundContainer(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header
            Row(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Yout Rating",
                    style: AppStyles.style15Bold(context).copyWith(),
                  ),
                ),
                const Spacer(),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("1.3", style: AppStyles.style15Bold(context)),
                ),
              ],
            ),
            Gap(18),
            Expanded(
              child: (
                YourRatingItemChart(value: 1.3)),
            ),

            /// chart
            Gap(10),
            Row(
              children: [
                Text(
                  'Canceling- Seller Related',
                  style: AppStyles.style9Regular(context),
                ),
                Spacer(),
                Text('6%', style: AppStyles.style10Bold(context)),
              ],
            ),
            Text(
              'Very Poor',
              style: AppStyles.style10Bold(context).copyWith(color: Colors.red),
            ),
            Divider(indent: 3, endIndent: 3, height: 5),
            Row(
              children: [
                Text(
                  'Handling Time With SLA',
                  style: AppStyles.style9Regular(context),
                ),
                Spacer(),
                Text('88%', style: AppStyles.style10Bold(context)),
              ],
            ),
            Text(
              'Very Poor',
              style: AppStyles.style10Bold(context).copyWith(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/best_selling_product_chart.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';

class BestSelleingProductItem extends StatelessWidget {
  const BestSelleingProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.8,
      child: CustombackgroundContainer(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("Best Selling Product\n sales Contribution",style: AppStyles.style11ExtraBold(context),),
                Spacer(),
                Text("71%",style: AppStyles.style15Bold(context),),
              ],
            ),
            Gap(20),
            BestSellingProductChart(
              percent: 71,   // percent of the colored part
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best selling Products ",style: AppStyles.style9Regular(context)),
                Gap(7),
             Text("Low Stock Level",style: AppStyles.style9Regular(context),),
              ],
             ),
           
             Text("1",style: AppStyles.style10Bold(context)),
              ],
            ),
             Divider(
              endIndent: 5,
              indent: 5,
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              children: [
                Text('Total out of Stock',style: AppStyles.style9Regular(context)),
                Spacer(),
                Text('1351',style: AppStyles.style10Bold(context),),
              ],
            )
      
          ],
        ),
        ),
    );
  }
}
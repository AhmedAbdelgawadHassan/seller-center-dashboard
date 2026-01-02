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
      aspectRatio: 0.5,
      child: CustombackgroundContainer(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("Best Selling Product\n sales Contribution",style: AppStyles.style12Bold(context),)),
                Spacer(),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("71%",style: AppStyles.style15Bold(context),)),
              ],
            ),
            Gap(20),
            Expanded(
              child: BestSellingProductChart(
                percent: 71,   // percent of the colored part
              ),
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best selling Products ",style: AppStyles.style11Regular(context)),
                Gap(7),
             Text("Low Stock Level",style: AppStyles.style11Regular(context),),
              ],
             ),
           
             Text("1",style: AppStyles.style11Bold(context)),
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
                Text('Total out of Stock',style: AppStyles.style11Regular(context)),
                Spacer(),
                Text('1351',style: AppStyles.style11Bold(context),),
              ],
            )
      
          ],
        ),
        ),
    );
  }
}
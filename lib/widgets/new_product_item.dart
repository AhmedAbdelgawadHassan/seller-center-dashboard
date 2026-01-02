import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/DetailedIncomeChart.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';

class NewProductItem extends StatelessWidget {
  const NewProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.5,
      child: CustombackgroundContainer(
            padding: EdgeInsets.all( 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                Row(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("New Product \nCreation",
                          style: AppStyles.style15Bold(context).copyWith(
                            
                          )),
                    ),
                    const Spacer(),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("1549",
                          style: AppStyles.style15Bold(context)),
                    ),
                  ],
                ),
      
                const Gap(4),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text("(Last 14 Days)",
                      style: AppStyles.style10Regular(context).copyWith(color: Colors.grey)),
                ),
                Gap( 18),
                Expanded(child: DetailedIncomeChart()),  /// chart
                Gap(15),
                Row(
                  children: [
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow
                    ),
                  ),
                  Gap(5),
                  Text('missing image',
                  style: AppStyles.style10SemiBold(context),),
                  Spacer(),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff7266ED)
                    ),
                  ),
                  Gap(5),
                  Text('Poor quality',
                  style: AppStyles.style10SemiBold(context),)
                  ],
                ),
          Gap(10),
               Row(
                children: [
            Text('Approved',style: AppStyles.style10Bold(context),),
            Spacer(),
            Text('3928',style: AppStyles.style10Regular(context),)
                ],
               ),
                const Divider(thickness: 1),
                 Row(
                children: [
            Text('Pending ',style: AppStyles.style10Bold(context),),
            Spacer(),
            Text('227',style: AppStyles.style10Regular(context),)
                ],
               ),
              
              ],
            ),
          
        
      ),
    );
  }
}

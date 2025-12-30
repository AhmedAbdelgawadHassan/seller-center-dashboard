import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/sidebar_items_listview.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Color(0xff35363F)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[ 
              InkWell(
              onTap: () {
              },
              child: SvgPicture.asset(AppAssets.sideBarMenu)),
               Text('SELLER CENTER',style: AppStyles.style16SemiBold(context).copyWith(color: Colors.black,backgroundColor: Colors.white),),
         ]
          ),
          Gap(50),
            SidebarItemsListview()
        ],
      ),
    );
  }
}
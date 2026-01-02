import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';

import 'package:seller_center_dashboard/widgets/table_sidebar_items_listview.dart';


class TabletSidebar extends StatelessWidget {
  const TabletSidebar ({super.key});
  

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
            mainAxisAlignment: MainAxisAlignment.start,
            children:[ 
              InkWell(
              onTap: () {
              },
              child: SvgPicture.asset(AppAssets.sideBarMenu)),
         ]
          ),
          Gap(50),
            Expanded(child: TabletSidebarItemsListView())
        ],
      ),
    );
  }
}
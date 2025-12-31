import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/models/sidebar_item_model.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/sidebar_item.dart';

class SidebarItemsListview extends StatefulWidget {
  const SidebarItemsListview({super.key});
  static List<SidebarItemModel> sidebarItems = [
    SidebarItemModel(title: 'OverView', image: AppAssets.overview),
    SidebarItemModel(title: 'Products', image: AppAssets.products),
    SidebarItemModel(title: 'Orders', image: AppAssets.orders),
    SidebarItemModel(title: 'Reports', image: AppAssets.reports),
    SidebarItemModel(title: 'Settings', image: AppAssets.settings),
    SidebarItemModel(title: 'Administration', image: AppAssets.user),
    SidebarItemModel(title: 'Maintanance', image: AppAssets.maintanance),
    SidebarItemModel(title: 'Help', image: AppAssets.help),
  ];

  @override
  State<SidebarItemsListview> createState() => _SidebarItemsListviewState();
}

class _SidebarItemsListviewState extends State<SidebarItemsListview> {
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: SidebarItemsListview.sidebarItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Stack(
                children: [
                  SidebarItem(
                    sidebarItemModel: SidebarItemsListview.sidebarItems[index],
                    isSelected: index == currentIndex,
                  ),
                  index == 2      
                      ? Positioned(
                          top: 0,
                          bottom: 0,
                          right: 50,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff7266ED),
                            ),
                            child: Text(
                              '20',
                              style: AppStyles.style11SemiBold(context),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

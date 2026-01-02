import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/models/sidebar_item_model.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/widgets/tablet_sidebar_item.dart';

class TabletSidebarItemsListView extends StatefulWidget {
  const TabletSidebarItemsListView({super.key});

  @override
  State<TabletSidebarItemsListView> createState() =>
      _TabletSidebarItemsListViewState();
}

class _TabletSidebarItemsListViewState extends State<TabletSidebarItemsListView> {
  int currentIndex = 0;

  List<SidebarItemModel> sidebarItems = [
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
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sidebarItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 5),
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: TabletSidebarItem(
              sidebarItemModel: sidebarItems[index],
              isSelected: index == currentIndex,
            ),
          ),
        );
      },
    );
  }
}

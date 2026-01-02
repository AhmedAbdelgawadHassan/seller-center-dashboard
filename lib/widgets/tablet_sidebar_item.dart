import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seller_center_dashboard/models/sidebar_item_model.dart';

class TabletSidebarItem extends StatelessWidget {
  const TabletSidebarItem({
    super.key,
    required this.sidebarItemModel,
    required this.isSelected,
  });
  final SidebarItemModel sidebarItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      color: isSelected ? Color(0xff42434C) : Color(0xff35363F),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(sidebarItemModel.image,width: 20,height: 20,), 
           
      ),
    );
  }
}

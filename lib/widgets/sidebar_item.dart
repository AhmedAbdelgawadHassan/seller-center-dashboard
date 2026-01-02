import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seller_center_dashboard/models/sidebar_item_model.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem({
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
        leading: FittedBox(
          fit: BoxFit.scaleDown,
          child: SvgPicture.asset(sidebarItemModel.image,width: 20,height: 20,)),
        title: Align(
          // to align the text in left
          alignment: Alignment.topLeft,
          child: Text(
            sidebarItemModel.title!,
            style: AppStyles.style15Medium(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        trailing: Transform.rotate(
          angle: 3.145949, // rotate 180 degrees
          child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class UserInfoItem extends StatelessWidget {
  const UserInfoItem({super.key, required this.title1Color, required this.title2Color});
  final Color title1Color;
  final Color title2Color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
          fit: BoxFit.scaleDown,
        child: Text("Puma Official Store", style: AppStyles.style12Bold(context).copyWith(color: title1Color))),
      subtitle: FittedBox(
          fit: BoxFit.scaleDown,
        child: Text(
          "Change Seller",
          style: AppStyles.style10SemiBold(context).copyWith(color: title2Color),
        ),
      ),
      trailing: Stack(
        clipBehavior: Clip.none,
        children: [
          Image(image: AssetImage(AppAssets.avater), height: 40, width: 40),
          Positioned(
            bottom: -4,
            right:-4,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

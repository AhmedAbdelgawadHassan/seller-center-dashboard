import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/widgets/customTextField.dart';
import 'package:seller_center_dashboard/widgets/custombackground_container.dart';
import 'package:seller_center_dashboard/widgets/user_info_item.dart';

class UserSearchAppbar extends StatelessWidget {
  const UserSearchAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustombackgroundContainer(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Customtextfield()),
          Spacer(),
          SvgPicture.asset(AppAssets.bell),
          Gap(10),
         Expanded(
          flex: 2,
          child: UserInfoItem(title1Color: Colors.black,title2Color: Colors.grey,))

        ],
      ),
    );
  }
}
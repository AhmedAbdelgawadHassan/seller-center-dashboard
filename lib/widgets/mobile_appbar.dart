import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';
import 'package:seller_center_dashboard/widgets/user_info_item.dart';

class MobileAppbar extends StatelessWidget {
  const MobileAppbar({super.key, required this.iconMenuOnTap});
  final VoidCallback iconMenuOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff35363F)),
      child: Row(
        children: [
          Gap(10),
          InkWell(
            onTap:iconMenuOnTap ,
            child: SvgPicture.asset(AppAssets.sideBarMenu)),
          Gap(20),
          Icon(FontAwesomeIcons.magnifyingGlass,color: Colors.white,),
        Spacer(),
        SvgPicture.asset(AppAssets.bell),
        Gap(10),
         Expanded(child: UserInfoItem(title1Color: Colors.white,title2Color: Colors.white,))
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_assets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Desktop Layout"),
        Gap(20),
        SvgPicture.asset(AppAssets.gmailNotification,color: Colors.amber,)
      ],
    );
  }
}
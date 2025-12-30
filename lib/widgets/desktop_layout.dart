import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/widgets/custom_sidebar.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomSidebar()),
            Expanded(
          flex: 4,
          child: SizedBox()),
            Expanded(
          flex: 2,
          child: SizedBox())
      ],
    );
  }
}
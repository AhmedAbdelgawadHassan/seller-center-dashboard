import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/widgets/adaptive_layout.dart';
import 'package:seller_center_dashboard/widgets/desktop_layout.dart';
import 'package:seller_center_dashboard/widgets/mobile_layout.dart';
import 'package:seller_center_dashboard/widgets/tablet_layout.dart';

class SellerDashboardView extends StatelessWidget {
  const SellerDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}

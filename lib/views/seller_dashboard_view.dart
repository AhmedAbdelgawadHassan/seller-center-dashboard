import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/size_config.dart';
import 'package:seller_center_dashboard/widgets/adaptive_layout.dart';
import 'package:seller_center_dashboard/widgets/custom_sidebar.dart';
import 'package:seller_center_dashboard/widgets/desktop_layout.dart';
import 'package:seller_center_dashboard/widgets/mobile_layout.dart';
import 'package:seller_center_dashboard/widgets/tablet_layout.dart';

class SellerDashboardView extends StatefulWidget {
  const SellerDashboardView({super.key});

  @override
  State<SellerDashboardView> createState() => _SellerDashboardViewState();
}

class _SellerDashboardViewState extends State<SellerDashboardView> {
  final _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _globalKey,
      drawer: width < SizeConfig.tablet ? Drawer(child: CustomSidebar()) : null,  // Drawer display only in Mobile

      backgroundColor: Color(0xffD8D7DB),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(
          iconMenuOnTap: () => _globalKey.currentState!.openDrawer(),
        ),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}

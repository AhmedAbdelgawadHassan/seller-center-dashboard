import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/views/seller_dashboard_view.dart';

void main()
{
  runApp(DevicePreview(
    enabled: true,
    builder: (context) =>  const SellerCenterDashboard()));
}


class SellerCenterDashboard extends StatelessWidget {
  const SellerCenterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SellerDashboardView(),
    );
  }
}
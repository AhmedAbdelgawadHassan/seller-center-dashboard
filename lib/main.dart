import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/views/seller_dashboard_view.dart';

void main()
{
  runApp(SellerCenterDashboard());
}


class SellerCenterDashboard extends StatelessWidget {
  const SellerCenterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SellerDashboardView()
    );
  }
}
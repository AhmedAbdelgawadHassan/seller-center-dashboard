import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/widgets/deals_status.dart';

class DealStatusRow extends StatelessWidget {
  const DealStatusRow({super.key});
  static List<DealsStatus>dealItems=[
  DealsStatus(color: Colors.green, containerChild: '1', title: 'Approved deals'),
  DealsStatus(color: Colors.orange, containerChild: '-', title: 'Pending deals'),
  DealsStatus(color: Colors.red, containerChild: '-', title: 'Rejected deals')
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: dealItems.map((e) => e).toList(),
    );
  }
}
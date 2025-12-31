import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/custom_sidebar.dart';
import 'package:seller_center_dashboard/widgets/user_search_appbar.dart';


class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomSidebar()),
          Gap(10),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                Gap(15),
                UserSearchAppbar(),
                Gap(10),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                                flex: 4,
                                child:Container(
                                  color: Colors.orange,
                                )),
                                  Expanded(
                                flex: 2,
                                child: Container(color: Colors.blue,))
                      ],
                    ),
                  )
              ],
            ),
          )
      ],
    );
  }
}
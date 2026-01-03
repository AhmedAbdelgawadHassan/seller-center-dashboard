import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/widgets/promotion_section.dart';

class MobilePromotionPageview extends StatefulWidget {
  const MobilePromotionPageview({super.key});

  @override
  State<MobilePromotionPageview> createState() =>
      _MobilePromotionPageviewState();
}

class _MobilePromotionPageviewState extends State<MobilePromotionPageview> {
  final PageController _pageController = PageController();
   int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: _pageController,
          children: PromotionSection.promotionItems,
          onPageChanged: (index) {
            setState(() {
              currentPage=index;
            });
          },
        ),
        Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color:currentPage==index?Colors.black: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

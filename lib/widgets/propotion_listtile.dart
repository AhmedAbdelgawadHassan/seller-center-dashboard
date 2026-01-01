import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class PropotionListtile extends StatelessWidget {
  const PropotionListtile({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
        Gap(10),
        Flexible(   // because when text is too long it take another line  (space it needed)
          child: Text(
            title,
            style: AppStyles.style12SemiBold(
              context,
            ).copyWith(color: Colors.black, ),
            maxLines: 2,
             overflow: TextOverflow.visible
          ),
        ),
      ],
    );
  }
}

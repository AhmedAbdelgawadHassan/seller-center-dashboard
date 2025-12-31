import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
        fillColor: Colors.white,
         filled: true,
         hint: Row(
          children: [
            Icon(FontAwesomeIcons.magnifyingGlass,color: Color(0xff979797),size: 16,),
            Gap(15),
            Text("Search",style: AppStyles.style15Regular(context),),
          ],
         ),
         enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD5D4D8)),
          borderRadius: BorderRadius.circular(8),
         ),
         focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD5D4D8),),
          borderRadius: BorderRadius.circular(8),
          )
      ),
    );
  }
}
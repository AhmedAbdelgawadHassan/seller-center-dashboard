import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/utils/size_config.dart';

// using Typography Inspector Plugin on figma to get Styles for each component
abstract class AppStyles {
  static TextStyle style15Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 15),
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto',
      color: Colors.white,
    );
  }

  static TextStyle style11SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 11),
      fontWeight: FontWeight.w600,
      fontFamily: 'Mulish',
      color: Colors.white,
    );
  }

  static TextStyle style15Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 15),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Color(0xff979797),
    );
  }

  static TextStyle style11ExtraBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 11),
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style15Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 15),
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style16SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style8Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 8),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Color(0xffD9D9D9),
    );
  }

  static TextStyle style7Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 7.6),
      fontWeight: FontWeight.w400,
      fontFamily: 'Public Sans',
      color: Color(0xffD9D9D9),
    );
  }

  static TextStyle style9Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 9),
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style20Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 20),
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style13Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 13),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Color(0xff979797),
    );
  }

  static TextStyle style12Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style13SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
      color: Color(0xffDBDADE),
    );
  }

  static TextStyle style8Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 8),
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto',
      color: Color(0xffDBDADE),
    );
  }

  static TextStyle style12SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
      color: Color(0xff979797),
    );
  }

  static TextStyle style11Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 11),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Color(0xff363740),
    );
  }

  static TextStyle style9Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 9),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style10Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 10),
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style11Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 11),
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style10Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 10),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style12Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style12Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style10SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 10),
      fontWeight: FontWeight.w600,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }

  static TextStyle style10Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 10),
      fontWeight: FontWeight.w500,
      fontFamily: 'times new roman',
      color: Colors.black,
    );
  }

  static TextStyle style25Bold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 25),
      fontWeight: FontWeight.w700,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }


  static TextStyle style10Light(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 10),
      fontWeight: FontWeight.w300,
      fontFamily: 'Roboto',
      color: Colors.black,
    );
  }






}



 double getResponsiveFontSize(context,{required double baseFontSize,}) {    // Method to Make Text Responsive
    double scaleFactor = getScaleFactor(context);  
    double responsiveFontSize = baseFontSize * scaleFactor;
    double upperLimit = baseFontSize * 1.2;
    double lowerLimit = baseFontSize * 0.4;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(context) {   // Method get Scale Factor that must to multiply to base font size to make it responsive
    double screenWidth=MediaQuery.of(context).size.width;
    if (screenWidth <= SizeConfig.tablet) { // 700
      return screenWidth / 500;   
    } else if (screenWidth <= SizeConfig.desktop) { // 1200
      return screenWidth / 1000;
    } else {
      return screenWidth / 1600;    
    }
  }
import 'package:electric_praise/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  // Text Styles

  static TextStyle mainBigTextStyle = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryColor,
    fontFamily: 'notoserif',
    letterSpacing: 4.8,
    height: 1,
  );
  static TextStyle lightTextStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.greyTextColor,
    fontFamily: 'inter',
    letterSpacing: 3.6,
  );
  static TextStyle darkBoldTextStyle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.darkPrimaryColor,
    fontFamily: 'inter',
    letterSpacing: 0.45,
  );
  static TextStyle lightMediumTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGreyTextColor,
    fontFamily: 'inter',
    letterSpacing: 0.4,
  );
  static TextStyle medium10TextStyle = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGreyTextColor,
    fontFamily: 'inter',
    letterSpacing: 3,
  );
  static TextStyle counterTextStyle = TextStyle(
    fontSize: 96.sp,
    fontWeight: FontWeight.w900,
    color: AppColors.lightGreyTextColor,
    fontFamily: 'inter',
    letterSpacing: 0,
  );
  static TextStyle regular10GreenTTextStyle = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor.withValues(alpha: 0.4),
    fontFamily: 'inter',
    letterSpacing: 1,
  );
  static TextStyle normalTextStyle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreyTextColor,
    fontFamily: 'amiri',
    letterSpacing: 1.2,
  );
  static TextStyle normalGreenTextStyle = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGreyTextColor,
    fontFamily: 'inter',
    letterSpacing: 2.4,
  );
  static TextStyle regular48GreenTextStyle = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
    fontFamily: 'amiri',
  );
}

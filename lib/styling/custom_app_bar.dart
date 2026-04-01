import 'package:electric_praise/styling/app_colors.dart';
import 'package:electric_praise/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar {
  static AppBar build() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Image.asset('assets/images/app_icon.png'),
      ),

      title: Text(
        'Electric Praise',
        style: AppStyles.mainBigTextStyle.copyWith(
          fontSize: 20.sp,
          letterSpacing: 2,
        ),
      ),

      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withValues(alpha: 0.05),
              blurRadius: 30,
              spreadRadius: 0,
              offset: const Offset(0, 15),
            ),
          ],
        ),
      ),
    );
  }
}

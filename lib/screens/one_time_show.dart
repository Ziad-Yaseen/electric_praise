import 'package:electric_praise/components/background.dart';
import 'package:electric_praise/components/custom_snack_bar.dart';
import 'package:electric_praise/components/primary_button.dart';
import 'package:electric_praise/components/secondary_button.dart';
import 'package:electric_praise/screens/home.dart';
import 'package:electric_praise/styling/app_colors.dart';
import 'package:electric_praise/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OneTimeShow extends StatelessWidget {
  const OneTimeShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              width: 120.w,
              height: 120.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 120.w,
                    height: 120.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF3CDDC7).withValues(alpha: 0.05),
                      border: Border.all(
                        color: const Color(0xFF3CDDC7).withValues(alpha: 0.1),
                        width: 1,
                      ),
                    ),
                  ),

                  Container(
                    width: 85.w,
                    height: 85.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFF3CDDC7), Color(0xFF004E45)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'E',
                      style: TextStyle(
                        color: const Color(0xFF003731),
                        fontSize: 48.sp,
                        fontWeight: FontWeight.w900,
                        height: 0.9,
                        fontFamily: 'notoserif',
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 22.w,
                    right: 22.w,
                    child: Container(
                      width: 18.w,
                      height: 18.w,
                      decoration: BoxDecoration(
                        color: const Color(0xFF004E45),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(
                              0xFFF9BD22,
                            ).withValues(alpha: 0.4),
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.5.w),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFF9BD22),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50.h),
            Text(
              'ELECTRIC PRAISE',
              style: AppStyles.mainBigTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Connect with Divine Remembrance',
                style: AppStyles.lightTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: PrimaryButton(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_circle_fill,
                        color: AppColors.darkPrimaryColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      Text('Start Dhikr', style: AppStyles.darkBoldTextStyle),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: SecondaryButton(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.import_contacts,
                        color: AppColors.lightGreyTextColor,
                        size: 20.sp,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'Quick Walkthrough',
                        style: AppStyles.lightMediumTextStyle,
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  CustomSnackBar.show(
                    context: context,
                    message: 'Still Under Developing',
                    backgroundColor: AppColors.darkPrimaryColor,
                  );
                },
              ),
            ),
            Spacer(),
            Container(
              height: 1,
              width: 70,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primaryColor.withValues(alpha: 0.01),
                    AppColors.primaryColor,
                    AppColors.primaryColor.withValues(alpha: 0.01),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 96.0),
              child: Text(
                'A DIGITAL SANCTUARY FOR THE MODERN SOUL',
                style: AppStyles.medium10TextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

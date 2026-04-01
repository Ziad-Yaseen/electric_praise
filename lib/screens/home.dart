import 'package:electric_praise/components/goal_progress_bar.dart';
import 'package:electric_praise/styling/App_styles.dart';
import 'package:electric_praise/styling/app_colors.dart';
import 'package:electric_praise/styling/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    int currentCount = 33;
    int totalCount = 100;
    return Scaffold(
      appBar: CustomAppBar.build(),
      body: Center(
        child: Column(
          children: [
            Text('سبحان الله', style: AppStyles.regular48GreenTextStyle),
            Text('SUBHANALLAH', style: AppStyles.normalGreenTextStyle),
            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: GoalProgressBar(
                currentCount: currentCount,
                totalCount: totalCount,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 51, vertical: 48),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primaryColor.withValues(alpha: 0.1),
                      offset: const Offset(0, 0),
                      blurRadius: 30,
                      spreadRadius: 0,
                    ),

                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      offset: const Offset(0, 0),
                      blurRadius: 0,
                      spreadRadius: 0,
                    ),

                    const BoxShadow(
                      color: Color(0xFF2A2A2D),
                      offset: Offset(0, 0),
                      blurRadius: 15,
                      spreadRadius: -4.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(84.5),
                  child: Column(
                    children: [
                      Text('33', style: AppStyles.counterTextStyle),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Icon.png',
                              width: 12.25.w,
                              height: 12.25.w,
                              color: AppColors.primaryColor.withValues(
                                alpha: 0.4,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              'TAP TO COUNT',
                              style: AppStyles.regular10GreenTTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:electric_praise/components/goal_progress_bar.dart';
import 'package:electric_praise/styling/App_styles.dart';
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
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: GoalProgressBar(
                currentCount: currentCount,
                totalCount: totalCount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

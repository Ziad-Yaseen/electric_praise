import 'package:electric_praise/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoalProgressBar extends StatelessWidget {
  final int currentCount;
  final int totalCount;

  const GoalProgressBar({
    super.key,
    required this.currentCount,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    double progressPercent = (currentCount / totalCount).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'GOAL PROGRESS',
              style: AppStyles.normalGreenTextStyle.copyWith(
                fontSize: 10.sp,
                letterSpacing: 1,
              ),
            ),
            Text(
              '$currentCount / $totalCount',
              style: AppStyles.normalGreenTextStyle.copyWith(
                fontSize: 12.sp,
                color: const Color(0xFFF9BD22),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),

        LayoutBuilder(
          builder: (context, constraints) {
            final double maxWidth = constraints.maxWidth;

            return Stack(
              children: [
                Container(
                  width: maxWidth,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2A2D),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),

                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),

                  curve: Curves.easeOut,

                  width: maxWidth * progressPercent,
                  height: 6.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF4EE39D),
                        Color(0xFFE5D554),
                        Color(0xFF4FF3D8),
                      ],
                      stops: [0.0, 0.6, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF4FF3D8).withValues(alpha: 0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

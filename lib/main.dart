import 'package:electric_praise/screens/one_time_show.dart';
import 'package:electric_praise/styling/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ElectricPraise());
}

class ElectricPraise extends StatelessWidget {
  const ElectricPraise({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 884),
      builder: (context, child) => MaterialApp(
        theme: AppThemes.lightTheme,
        title: 'Electric Praise',
        home: child,
      ),
      child: const OneTimeShow(),
    );
  }
}

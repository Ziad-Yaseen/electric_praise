import 'package:electric_praise/styling/app_colors.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.child,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        backgroundColor: AppColors.darkGreyColor.withValues(alpha: 0.4),
        side: BorderSide(
          color: AppColors.lightGreyColor.withValues(alpha: 0.2),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        overlayColor: AppColors.darkGreyColor.withValues(alpha: 0.3),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

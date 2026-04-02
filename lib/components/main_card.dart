import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    this.onPressed,
    this.color = const Color(0xFF2A2A2A),
    this.borderRadius = 12,
    required this.child,
  });
  final VoidCallback? onPressed;
  final Color color;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: color,
          border: Border.all(
            color: const Color(0xFF404944).withValues(alpha: 0.2),
            width: 1,
          ),
        ),

        child: Padding(padding: const EdgeInsets.all(11.0), child: child),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF131313),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(-1.0, -1.0),
                  radius: 1.5,
                  colors: [
                    const Color(0xFF3CDDC7).withValues(alpha: 0.08),
                    const Color(0xFF3CDDC7).withValues(alpha: 0.0),
                  ],
                  stops: const [0.0, 1.0],
                ),
              ),
            ),
          ),

          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(1.0, 1.0),
                  radius: 1.5,
                  colors: [
                    const Color(0xFFF9BD22).withValues(alpha: 0.04),
                    const Color(0xFFF9BD22).withValues(alpha: 0.0),
                  ],
                  stops: const [0.0, 1.0],
                ),
              ),
            ),
          ),

          Scaffold(backgroundColor: Colors.transparent, body: child),
        ],
      ),
    );
  }
}

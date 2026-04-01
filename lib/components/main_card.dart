import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onPressed, child: Container());
  }
}

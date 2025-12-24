import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CircularContainers extends StatelessWidget {
  const CircularContainers({
    super.key,
    this.height = 400,
    this.width = 400,
    this.backgroundColor = AppColors.primary,
    this.child,
    this.padding = 0,
    this.radius = 0,
  });

  final double? height;
  final double? width;
  final double padding;
  final double radius;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
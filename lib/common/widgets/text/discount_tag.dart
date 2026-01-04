import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class DiscountTag extends StatelessWidget {
  const DiscountTag({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return RoundedContainers(
      radius: AppSizes.sm,
      backgroundColor: AppColors.secondary.withValues(alpha: 0.8),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.sm,
        vertical: AppSizes.xs,
      ),
      child: Text(
        "$text%",
        style: Theme.of(
          context,
        ).textTheme.labelLarge!.apply(color: AppColors.black),
      ),
    );
  }
}

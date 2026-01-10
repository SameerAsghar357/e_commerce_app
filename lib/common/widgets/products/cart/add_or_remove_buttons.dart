import 'package:e_commerce_app/common/icons/circular_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddOrRemoveButtons extends StatelessWidget {
  const AddOrRemoveButtons({
    super.key,
    this.addButtonColor = AppColors.dark,
    this.removeButtonColor = AppColors.darkGrey,
  });

  final Color? addButtonColor;
  final Color? removeButtonColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Iconsax.minus,
          color: AppColors.white,
          backgroundColor: removeButtonColor,
          onPressed: () {},
          height: 40,
          width: 40,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text("2", style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: AppSizes.spaceBtwItems),
        CircularIcon(
          icon: Iconsax.add,
          color: AppColors.white,
          backgroundColor: addButtonColor,
          onPressed: () {},
          height: 40,
          width: 40,
        ),
      ],
    );
  }
}

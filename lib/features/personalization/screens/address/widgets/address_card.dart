import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
    required this.isSelected,
    required this.name,
    this.number,
    this.address,
    this.onTap,
  });

  final bool isSelected;
  final String name;
  final String? number;
  final String? address;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainers(
        margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
        backgroundColor: isSelected
            ? AppColors.primary.withValues(alpha: 0.5)
            : Colors.transparent,
        showBorder: true,
        borderColor: isSelected
            ? (darkMode ? AppColors.grey : AppColors.black)
            : AppColors.grey,
        padding: EdgeInsets.all(AppSizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: Theme.of(context).textTheme.titleLarge),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: isSelected ? Icon(Iconsax.tick_circle5) : null,
                ),
              ],
            ),
            const SizedBox(height: AppSizes.sm / 2),
            Text(number ?? "", maxLines: 1, overflow: TextOverflow.ellipsis),
            const SizedBox(height: AppSizes.sm / 2),
            Text(address ?? "", softWrap: true),
          ],
        ),
      ),
    );
  }
}

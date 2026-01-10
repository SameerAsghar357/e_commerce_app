import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (context, index) =>
          const SizedBox(height: AppSizes.spaceBtwItems),
      itemCount: 3,
      itemBuilder: (context, index) {
        return RoundedContainers(
          padding: EdgeInsets.all(AppSizes.md),
          showBorder: true,
          backgroundColor: darkMode ? AppColors.dark : AppColors.light,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// -- 1st Row
              Row(
                /// -- Order Processing Details
                children: [
                  Icon(Iconsax.ship),
                  const SizedBox(width: AppSizes.spaceBtwItems / 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Processing",
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: AppColors.primary,
                            fontWeightDelta: 2,
                          ),
                        ),
                        Text(
                          "01 Sep 2023",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.apply(fontWeightDelta: 1),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Iconsax.arrow_right_34, size: 20),
                  ),
                ],
              ),

              const SizedBox(height: AppSizes.spaceBtwItems),

              // -- Row 2
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.tag),
                        const SizedBox(width: AppSizes.spaceBtwItems / 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context).textTheme.labelMedium!
                                  .apply(fontWeightDelta: 1),
                            ),
                            Text(
                              "CWT0012",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.apply(fontWeightDelta: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Icon(Iconsax.calendar),
                        const SizedBox(width: AppSizes.spaceBtwItems / 2),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping Date",
                              style: Theme.of(context).textTheme.labelMedium!
                                  .apply(fontWeightDelta: 1),
                            ),
                            Text(
                              "09 Sep 2025",
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.apply(fontWeightDelta: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderPriceDetails extends StatelessWidget {
  const OrderPriceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Subtotal", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$1464.0", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Shipping Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$5.00", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Tax Fee", style: Theme.of(context).textTheme.bodyMedium),
            Text("\$146.40", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),

        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        const SizedBox(height: AppSizes.spaceBtwItems),

        /// -- Total Price
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Order Total", style: Theme.of(context).textTheme.titleLarge),
            Text("\$1615.4", style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ],
    );
  }
}

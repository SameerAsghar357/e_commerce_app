import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderReviewKeyValues extends StatelessWidget {
  const OrderReviewKeyValues({
    super.key,
    required this.keys,
    required this.values,
  });

  final String keys;
  final String values;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(keys, style: Theme.of(context).textTheme.bodyMedium),
            Text("\$$values", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
      ],
    );
  }
}

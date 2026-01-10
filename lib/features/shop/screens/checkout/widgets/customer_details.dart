import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: "Shipping Address",
          onPressed: () {},
          buttonTitle: "Change",
        ),

        Text(
          "Coding with Sameer",
          style: Theme.of(context).textTheme.bodyLarge,
        ),

        const SizedBox(height: AppSizes.spaceBtwItems / 2),

        /// -- Number & Address
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.call, size: 17, color: AppColors.darkGrey),
            const SizedBox(width: AppSizes.sm),
            Text(
              "+923178059528",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.location_history, size: 17, color: AppColors.darkGrey),
            const SizedBox(width: AppSizes.sm),
            Flexible(
              child: Text(
                "742 Evergreen Terrace, Springfield OR 97403, USA",
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
                // softWrap: true,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

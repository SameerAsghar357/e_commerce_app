import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PromoCodeCard extends StatelessWidget {
  const PromoCodeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainers(
      padding: const EdgeInsets.all(AppSizes.sm),
      backgroundColor: Colors.transparent,
      width: double.infinity,
      showBorder: true,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hint: Text("Have a promo code? Enter here"),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
                disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(AppSizes.md),
              backgroundColor: AppColors.grey,
              side: BorderSide.none,
              // side: BorderSide(color: AppColors.grey),
            ),
            onPressed: () {},
            child: const Text(
              "Apply",
              style: TextStyle(color: AppColors.darkGrey),
            ),
          ),
        ],
      ),
    );
  }
}

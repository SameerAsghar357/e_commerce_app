import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),

        /// -- ATM CARD Details
        Row(
          children: [
            RoundedImage(
              height: 50,
              width: 70,
              padding: EdgeInsets.symmetric(horizontal: AppSizes.sm),
              imageUrl: AppImages.visa,
              backgroundColor: darkMode ? AppColors.light : Colors.transparent,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            ProductTitleText(title: "VISA"),
          ],
        ),
      ],
    );
  }
}

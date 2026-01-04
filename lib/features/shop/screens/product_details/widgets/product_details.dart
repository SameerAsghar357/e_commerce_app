import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/text/brand_title_text.dart';
import 'package:e_commerce_app/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/text/discount_tag.dart';
import 'package:e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/text/product_title_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_details_header.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Product Details Header
            ProductDetailsHeader(),

            // -- Product Details
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // -- Rating
                      Row(
                        children: [
                          Icon(Iconsax.star5, color: AppColors.secondary),
                          const SizedBox(width: AppSizes.sm),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "5.0",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                TextSpan(text: "(199)"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // -- Share Button
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    ],
                  ),
                  // -- Discount Tag & Price Tag
                  Row(
                    children: [
                      //  -- Discount Tag
                      const DiscountTag(text: "25"),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      // -- Original Price
                      Text(
                        "\$250",
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      // -- Discounted Price
                      ProductPriceText(price: "175", isLarge: true),
                    ],
                  ),

                  const SizedBox(height: AppSizes.spaceBtwItems),
                  // -- Product Title
                  ProductTitleText(title: "Green Nike Sports Shirt"),
                  const SizedBox(height: AppSizes.spaceBtwItems),

                  Row(
                    children: [
                      ProductTitleText(title: "Status"),
                      const SizedBox(width: AppSizes.spaceBtwItems),
                      ProductTitleText(title: "In Stock"),
                    ],
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems * 1.5),
                  Row(
                    children: [
                      CircularImage(
                        image: AppImages.shoeIcon,
                        height: 32,
                        width: 32,
                        overlayColor: darkMode
                            ? AppColors.white
                            : AppColors.black,
                      ),
                      BrandTitleWithVerifiedIcon(
                        title: "Nike",
                        brandTextSize: TextSizes.medium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

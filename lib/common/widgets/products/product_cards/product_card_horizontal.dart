import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/text/discount_tag.dart';
import 'package:e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/icons/circular_icon.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/rounded_containers.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = HelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.all(1),
      // height: 120,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: darkMode ? AppColors.darkerGrey : AppColors.lightContainer,
      ),
      child: Row(
        children: [
          RoundedContainers(
            height: 120,
            backgroundColor: darkMode ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail
                SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    padding: const EdgeInsets.all(AppSizes.sm),
                    backgroundColor: darkMode
                        ? AppColors.dark
                        : AppColors.light,
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                /// -- Sale Tag
                const Positioned(
                  top: 12,
                  left: 10,
                  child: DiscountTag(text: "25"),
                ),

                /// -- Favourite Icon Button
                Positioned(
                  top: 2,
                  right: 0,
                  child: CircularIcon(
                    color: Colors.red.shade600,
                    size: AppSizes.iconMd,
                    onPressed: () {},
                    icon: Iconsax.heart5,
                  ),
                ),
              ],
            ),
          ),

          /// -- Product Details
          Expanded(
            child: SizedBox(
              // width: 172,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppSizes.sm,
                  top: AppSizes.sm,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adidas Red Footbal",
                          style: Theme.of(context).textTheme.labelSmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems / 2),
                        BrandTitleWithVerifiedIcon(title: "Adidas"),
                      ],
                    ),

                    Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // -- Pricing
                        Flexible(child: ProductPriceText(price: "256.0")),

                        // -- Add cart icon
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSizes.cardRadiusLg),
                              bottomRight: Radius.circular(
                                AppSizes.productImageRadius,
                              ),
                            ),
                          ),
                          child: SizedBox(
                            height: AppSizes.iconLg * 1.2,
                            width: AppSizes.iconLg * 1.2,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: AppColors.white.withValues(alpha: 0.8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

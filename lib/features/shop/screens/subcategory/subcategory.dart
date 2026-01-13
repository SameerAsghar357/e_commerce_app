import 'package:e_commerce_app/common/widgets/app_bar/custom_appbar.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
// import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SubcategoryScreen extends StatelessWidget {
  const SubcategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(showBackArrow: true, title: Text("Sports")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner
              const RoundedImage(
                width: double.infinity,
                imageUrl: AppImages.banner3,
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              SectionHeading(title: "Sports Equipments", onPressed: () {}),

              const SizedBox(height: AppSizes.spaceBtwItems),
              // SizedBox(
              //     height: 120,
              //     child: ProductCardHorizontal()
              //   ),

              /// -- Horizontal Product Details
              SizedBox(
                height: 120,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: AppSizes.spaceBtwItems),
                  itemBuilder: (context, index) {
                    return const ProductCardHorizontal();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:e_commerce_app/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:e_commerce_app/common/widgets/text/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/widgets/home_searchbar.dart';
import 'package:e_commerce_app/features/shop/screens/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/widgets/home_background.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenBackground(
              child: Column(
                children: [
                  // AppBar
                  HomeScreenAppBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // SearchBar
                  HomeScreenSearchBar(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // Categories List
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: "Popular Categories",
                          onPressed: () {},
                          showActionButton: false,
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),

                        HomeCategories(),
                      ],
                    ),
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

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 80,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: AppImages.shoeIcon,
            title: "Shoes",
            onTap: () {},
          );
        },
      ),
    );
  }
}

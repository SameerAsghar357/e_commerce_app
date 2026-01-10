import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/widgets/text/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/products/cart/add_or_remove_buttons.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showButtons = true});

  final bool showButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) =>
          const SizedBox(height: AppSizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) {
        return Column(
          children: [
            const CartItem(),
            if (showButtons) const SizedBox(height: AppSizes.spaceBtwItems),
            if (showButtons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 70),
                      AddOrRemoveButtons(
                        removeButtonColor: AppColors.darkerGrey,
                        addButtonColor: AppColors.primary,
                      ),
                    ],
                  ),
                  ProductPriceText(price: "1780"),
                ],
              ),
          ],
        );
      },
    );
  }
}
      // Not the best as per app demand of reusing the widgets it was not completing that demand as i made it myself it was
      // totally fine but bcz i did't know what coming next in app so i was unaware how to design it that its parts or it can be reusable in best way
    
      // body: Padding(
      //   padding: const EdgeInsets.all(AppSizes.defaultSpace),
      //   child: ListView.separated(
      //     separatorBuilder: (context, index) =>
      //         const SizedBox(height: AppSizes.spaceBtwSections),
      //     itemCount: 3,
      //     itemBuilder: (_, index) {
      //       return CartItems(
      //         productName: "iphone 8",
      //         productDetails: "APPLE iPhone 8 (Black, 64 GB)",
      //         productPrice: "380.0",
      //         productImage: AppImages.productImage14,
      //         itemDetailKey: "Storage",
      //         itemDetailValue: " 256 gb",
      //         itemColorKey: " Color",
      //         itemColorValue: " Red",
      //       );
      //     },
      // Column(
      //   children: [
      //     CartProducts(
      //       productName: "iphone 8",
      //       productDetails: "APPLE iPhone 8 (Black, 64 GB)",
      //       productPrice: "380.0",
      //       productImage: AppImages.productImage14,
      //       itemDetailKey: "Storage",
      //       itemDetailValue: " 256 gb",
      //       itemColorKey: " Color",
      //       itemColorValue: " Red",
      //     ),
      //     const SizedBox(height: AppSizes.spaceBtwSections),
      //     // CartProducts(
      //     //   productName: "Nike",
      //     //   productDetails: "Nike Track Suit Red",
      //     //   productPrice: "500.0",
      //     //   productImage: AppImages.productImage26,
      //     //   itemDetailKey: "Storage",
      //     //   itemDetailValue: " 256 gb",
      //     //   itemColorKey: " Color",
      //     //   itemColorValue: " Red",
      //     // ),
      //     // const SizedBox(height: AppSizes.spaceBtwSections),
      //     // CartProducts(
      //     //   productName: "Apple",
      //     //   productDetails: "Iphone 12, 4 Colors 128gb and 256gb",
      //     //   productPrice: "900.0",
      //     //   productImage: AppImages.productImage70,
      //     //   itemDetailKey: "Storage",
      //     //   itemDetailValue: " 256 gb",
      //     //   itemColorKey: " Color",
      //     //   itemColorValue: " Red",
      //     // ),
      //     // const SizedBox(height: AppSizes.spaceBtwSections),
      //   ],
      // ),
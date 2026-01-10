import 'package:e_commerce_app/common/widgets/app_bar/custom_appbar.dart';
import 'package:e_commerce_app/features/personalization/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text("Cart", style: Theme.of(context).textTheme.titleLarge),
      ),

      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: CartItems(),
      ),

      /// -- Bottom Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: ElevatedButton(
          onPressed: () => Get.to(() => CheckoutPage()),
          child: Text("Checkout 1780\$"),
        ),
      ),
    );
  }
}

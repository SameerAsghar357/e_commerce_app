import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.firstName,
                ),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.lastName,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Iconsax.user_edit),
            labelText: AppTexts.username,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Iconsax.direct),
            labelText: AppTexts.email,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Iconsax.call),
            labelText: AppTexts.phoneNo,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Iconsax.password_check),
            labelText: AppTexts.password,
          ),
        ),
      ],
    );
  }
}

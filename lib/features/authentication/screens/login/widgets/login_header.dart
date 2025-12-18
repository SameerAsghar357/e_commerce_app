
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: dark
              ? AssetImage("assets/logos/t-store-splash-logo-white.png")
              : AssetImage("assets/logos/t-store-splash-logo-black.png"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              AppTexts.loginSubTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Login Header with Logo or Title & Subtitle
              LoginHeader(dark: dark),

              const SizedBox(height: AppSizes.spaceBtwItems),

              // Login Form with TextFeilds and Buttons
              const LoginForm(),

              // Common FormDivider with Text
              FormDivider(dark: dark),

              const SizedBox(height: AppSizes.spaceBtwSections),

              // Common Social Button for Login SignUp Screens
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

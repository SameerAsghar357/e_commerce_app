import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? AppColors.white : AppColors.darkGrey,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(AppTexts.orSignInWith.capitalize!),
        Flexible(
          child: Divider(
            color: dark ? AppColors.white : AppColors.darkGrey,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}

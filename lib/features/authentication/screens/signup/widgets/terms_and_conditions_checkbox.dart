import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class GCustomTermsAndConditionsCheckbox extends StatelessWidget {
  const GCustomTermsAndConditionsCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Checkbox
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),

        // privacy policy and terms of use statement
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '${GTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: GTexts.privacyPolicy,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? GColors.white : GColors.primary,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' ${GTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: GTexts.termsOfUse,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? GColors.white : GColors.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ))
      ],
    );
  }
}

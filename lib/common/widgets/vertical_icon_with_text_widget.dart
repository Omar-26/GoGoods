import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';


class GVerticalIconWithText extends StatelessWidget {
  const GVerticalIconWithText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = GColors.white,
    this.iconBackgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? iconBackgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: GSizes.spaceBtwItems),
        child: Column(
          children: [
            // Category Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(GSizes.sm),
              decoration: BoxDecoration(
                color: iconBackgroundColor ??
                    (dark ? GColors.dark : GColors.light),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: (dark ? GColors.white : GColors.dark),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwItems / 2),

            // Category Name
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

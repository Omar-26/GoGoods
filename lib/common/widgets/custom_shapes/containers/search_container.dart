import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class GSearchBar extends StatelessWidget {
  const GSearchBar({
    super.key,
    required this.searchHint,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String searchHint;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.defaultSpace),
      child: Container(
        width: GDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(GSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? GColors.dark
                  : GColors.light
              : Colors.transparent,
          border: showBorder
              ? Border.all(color: dark ? GColors.dark : GColors.light)
              : null,
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: dark ? GColors.white : GColors.darkerGrey,
            ),
            const SizedBox(width: GSizes.spaceBtwItems),
            Text(
              searchHint,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? GColors.white : GColors.darkerGrey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

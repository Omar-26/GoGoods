import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class GHomeAppBar extends StatelessWidget {
  const GHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GCustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Greeting
          Text(GTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: GColors.grey)),
          // Name
          Text(GTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: GColors.white))
        ],
      ),
      actions: [
        GCounterIcon(
          icon: Iconsax.shopping_bag,
          iconColor: GColors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}

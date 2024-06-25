import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:GoGoods/common/widgets/texts/product_price_text.dart';
import 'package:GoGoods/common/widgets/texts/product_title_text.dart';
import 'package:GoGoods/utils/constants/enums.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class GProductMetaData extends StatelessWidget {
  const GProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// --Title
        Text(
          'Nike Air Max 270',
          maxLines: 1,
          style: Theme.of(context).textTheme.headlineLarge!.apply(
                color: dark ? GColors.white : GColors.black,
              ),
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.5),

        /// --Brand
        Row(
          children: [
            GCircularBorderImage(
              imageUrl: GImages.nikeLogo,
              width: 30,
              height: 30,
              overlayColor: dark ? GColors.black : GColors.white,
            ),
            const SizedBox(width: GSizes.sm),
            Text(
              'Nike',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(width: GSizes.xs),
            const Icon(
              Iconsax.verify5,
              color: GColors.primary,
              size: GSizes.iconXs,
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.5),

        /// --Price and Sale Price
        Row(
          children: [
            // --Sale Tag
            GCircularContainer(
              radius: GSizes.sm,
              backgroundColor: GColors.primary,
              padding: const EdgeInsets.symmetric(
                  vertical: GSizes.xs, horizontal: GSizes.sm),
              child: Text(
                '25%',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: GColors.white,
                    ),
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems),

            // --Price and Sale Price
            const GProductPriceText(
              price: '1000',
              isLargeText: true,
            ),
            const SizedBox(width: GSizes.spaceBtwItems),
            const GProductPriceText(
              price: '750',
              isLargeText: false,
              lineThrough: true,
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.5),

        /// --Stock Status
        Row(
          children: [
            const Icon(
              Icons.circle,
              size: 14,
              color: GColors.primary,
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium!.apply(
                    color: dark ? GColors.grey : GColors.darkerGrey,
                  ),
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.5),
      ],
    );
  }
}

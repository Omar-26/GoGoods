import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:cart_stepper/cart_stepper.dart';
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
        /// --Brand and Rating
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // --Brand
            Row(
              children: [
                const GCircularBorderImage(
                  imageUrl: GImages.nikeLogo,
                  width: GSizes.iconMd,
                  height: GSizes.iconMd,
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: GSizes.xs),
                Text(
                  'Nike',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge!.apply(
                        fontSizeDelta: -2,
                        color: dark ? GColors.grey : GColors.darkerGrey,
                      ),
                ),
                const SizedBox(width: GSizes.xs),
                const Icon(
                  Iconsax.verify5,
                  color: GColors.primary,
                  size: GSizes.iconXs,
                ),
              ],
            ),

            // --Rating
            const GRatingAndShare(),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.2),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // --Title and Stock Status
            Column(
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
                const SizedBox(height: GSizes.spaceBtwItems / 2),

                /// --Stock Status
                Row(
                  children: [
                    const Icon(
                      Icons.circle,
                      size: 14,
                      color: Colors.green,
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
                const SizedBox(height: GSizes.spaceBtwItems / 2),
              ],
            ),

            // --Add to Cart Counter
            CartStepper(
              didChangeCount: (value) {},
              alwaysExpanded: true,
              axis: Axis.vertical,
              style: CartStepperStyle(
                iconPlus: Iconsax.add,
                iconMinus: Iconsax.minus,
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .apply(color: GColors.white),
                backgroundColor: GColors.primary,
                foregroundColor: GColors.white,
                activeBackgroundColor: GColors.primary,
              ),
            )
          ],
        ),
      ],
    );
  }
}
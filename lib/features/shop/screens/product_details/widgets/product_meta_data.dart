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

            // --Share Button
            const GRatingAndShare(),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 1.2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                const SizedBox(height: GSizes.spaceBtwItems / 2),
              ],
            ),
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

/// --Price and Sale Price
// Column(
//   crossAxisAlignment: CrossAxisAlignment.start,
//   children: [
//     Row(
//       children: [
//         // --Price and Sale Price
//         const GProductPriceText(
//           price: '1000',
//           isLargeText: true,
//         ),
//         const SizedBox(width: GSizes.spaceBtwItems),
//
//         // --Sale Tag
//         GCircularContainer(
//           radius: GSizes.lg,
//           backgroundColor: GColors.primary,
//           padding: const EdgeInsets.symmetric(
//               vertical: GSizes.xs, horizontal: GSizes.sm),
//           child: Text(
//             '25%',
//             style: Theme.of(context).textTheme.labelLarge!.apply(
//                   color: GColors.white,
//                   fontWeightDelta: 2,
//                 ),
//           ),
//         ),
//         const SizedBox(width: GSizes.spaceBtwItems),
//       ],
//     ),
//     const SizedBox(height: GSizes.spaceBtwItems / 1.5),
//     const GProductPriceText(
//       price: '750',
//       isLargeText: false,
//       lineThrough: true,
//     ),
//   ],
// ),
// const SizedBox(height: GSizes.spaceBtwItems / 1.5),

import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class GProductDetailsBottomNavBar extends StatelessWidget {
  const GProductDetailsBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: GSizes.md, horizontal: GSizes.defaultSpace),
      decoration: BoxDecoration(
        color: dark ? GColors.black : GColors.white,
        // color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: dark
                ? GColors.black.withOpacity(0.4)
                : GColors.grey.withOpacity(0.4),
            offset: const Offset(0, -2),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          // --Price and Sale Price
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: GSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // --Sale Price
                  GProductPriceText(
                    price: '750.00',
                    lineThrough: true,
                    isLargeText: false,
                  ),
                  GProductPriceText(
                    price: '570.00',
                    isLargeText: true,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ),

          // --Add to Cart Slider Button
          Expanded(
            flex: 3,
            child: ActionSlider.standard(
              rolling: true,
              sliderBehavior: SliderBehavior.stretch,
              actionThresholdType: ThresholdType.instant,
              backgroundColor: dark ? GColors.dark : GColors.light,
              boxShadow: [
                BoxShadow(
                  color: dark
                      ? GColors.black.withOpacity(0.5)
                      : GColors.grey.withOpacity(0.5),
                  offset: const Offset(0, 2),
                  blurRadius: 10,
                ),
              ],
              icon: Icon(
                Iconsax.shopping_bag,
                size: GSizes.iconMd,
                color: dark ? GColors.black : GColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: GSizes.lg),
                child: Text(
                  'Add to Cart',
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.titleLarge!.apply(
                        color: dark ? GColors.white : GColors.black,
                      ),
                ),
              ),
            ),
          )

          // const SizedBox(width: GSizes.spaceBtwItems),

          // --Add to Cart Button
          // Expanded(
          //   flex: 3,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         const Icon(
          //           Iconsax.shopping_bag,
          //           size: GSizes.iconMd,
          //         ),
          //         const SizedBox(width: GSizes.xs),
          //         Text(
          //           'Add to Cart',
          //           style: Theme.of(context).textTheme.titleLarge!.apply(
          //                 color: GColors.white,
          //               ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

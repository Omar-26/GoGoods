import 'package:GoGoods/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/overall_rating.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/rating_stars_indicator.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:GoGoods/utils/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class GReviewsSection extends StatelessWidget {
  const GReviewsSection({super.key});

  get dark => null;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final screenWidth = GDeviceUtils.getScreenWidth(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // All Reviews Button
        GCircularContainer(
          padding: const EdgeInsets.all(GSizes.md),
          backgroundColor: dark ? GColors.dark : GColors.light,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'All Reviews',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(width: GSizes.xs),
                  Text(
                    '(17221)',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: dark ? GColors.grey : GColors.darkerGrey,
                        ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () => Get.to(() => const ProductReviewsScreen()),
                child: Row(
                  children: [
                    Text(
                      'View All',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: GColors.primary),
                    ),
                    const SizedBox(width: GSizes.sm),
                    const GCircularContainer(
                      padding: EdgeInsets.all(GSizes.xs),
                      radius: GSizes.lg,
                      backgroundColor: GColors.primary,
                      child: Icon(
                        Icons.arrow_forward_rounded,
                        color: GColors.white,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: GSizes.spaceBtwItems),

        // const GOverallProductRating(),

        Row(
          children: [
            Expanded(
              child: GCircularContainer(
                width: 130,
                height: 130,
                padding: const EdgeInsets.all(GSizes.md),
                backgroundColor: dark ? GColors.dark : GColors.light,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '4.8',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .apply(fontWeightDelta: 1),
                    ),
                    const GRatingStarsIndicator(rating: 3.7),
                    const SizedBox(height: GSizes.sm),
                  ],
                ),
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems),
            Expanded(
              child: GCircularContainer(
                width: 130,
                height: 130,
                padding: const EdgeInsets.all(GSizes.md),
                backgroundColor: dark ? GColors.dark : GColors.light,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Iconsax.tag_user5,
                      color: GColors.primary,
                      size: 68,
                    ),
                    const SizedBox(height: GSizes.xs),
                    Text(
                      '17221 reviews',
                      style: Theme.of(context).textTheme.titleMedium!.apply(
                          color: dark ? GColors.grey : GColors.darkerGrey,
                          fontWeightDelta: 1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwSections),
        const GUserReviewCard(),
      ],
    );
  }
}

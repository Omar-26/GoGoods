import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/rating_stars_indicator.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../../common/widgets/images/circular_border_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class GUserReviewCard extends StatelessWidget {
  const GUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(GImages.userProfileImage2)),
                const SizedBox(width: GSizes.sm),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: GSizes.xs),
                      child: Text('John Doe',
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    // const SizedBox(height: 5),
                    const GRatingStarsIndicator(rating: 4.5)
                  ],
                ),
              ],
            ),
            Text(
              '01 June 2024',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? Colors.white : Colors.black,
                  ),
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly Great job',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'read more',
          trimExpandedText: ' show less',
          moreStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: GColors.primary, fontWeightDelta: 1),
          lessStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .apply(color: GColors.primary, fontWeightDelta: 1),
          style: Theme.of(context).textTheme.bodySmall,
        ),

        const SizedBox(height: GSizes.spaceBtwItems),

        /// --Brand Response
        GCircularContainer(
          padding: const EdgeInsets.all(GSizes.md),
          backgroundColor: dark ? GColors.dark : GColors.light,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const GCircularBorderImage(
                        imageUrl: GImages.nikeLogo,
                        width: GSizes.iconMd,
                        height: GSizes.iconMd,
                        borderRadius: 100,
                        backgroundColor: Colors.transparent,
                      ),
                      const SizedBox(width: GSizes.xs),
                      Text('Nike',
                          style: Theme.of(context).textTheme.titleMedium),
                      const SizedBox(width: GSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: GColors.primary,
                        size: GSizes.iconSm,
                      ),
                    ],
                  ),
                  Text(
                    '03 June 2024',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? Colors.white : Colors.black,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: GSizes.spaceBtwItems / 2),
              ReadMoreText(
                'Thank you for your feedback. We are glad you had a great experience. We are always here to help you.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'read more',
                trimExpandedText: ' show less',
                moreStyle: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: GColors.primary, fontWeightDelta: 1),
                lessStyle: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: GColors.primary, fontWeightDelta: 1),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),

      ],
    );
  }
}

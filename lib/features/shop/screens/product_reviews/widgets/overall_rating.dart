import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/rating_progress_bar_indicator.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/rating_stars_indicator.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class GOverallProductRating extends StatelessWidget {
  const GOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        /// --Rating Number
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.centerLeft,
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
                Text(
                  '17221 reviews',
                  style: Theme.of(context).textTheme.bodySmall!.apply(
                        color: dark ? GColors.grey : GColors.darkerGrey,
                      ),
                ),
              ],
            ),
          ),
        ),

        /// --Rating Progress Bars
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              GRatingProgressIndicator(text: '5', value: 0.8),
              GRatingProgressIndicator(text: '4', value: 0.9),
              GRatingProgressIndicator(text: '3', value: 0.6),
              GRatingProgressIndicator(text: '2', value: 0.5),
              GRatingProgressIndicator(text: '1', value: 0.1),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:GoGoods/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/overall_rating.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class GReviewsTab extends StatelessWidget {
  const GReviewsTab({super.key});

  get dark => null;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return   Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GOverallProductRating(),
        const SizedBox(height: GSizes.spaceBtwSections),
        const GUserReviewCard(),
        const SizedBox(height: GSizes.spaceBtwItems/1.1),
        // All Reviews
        GCircularContainer(
          padding: const EdgeInsets.all(GSizes.sm),
          backgroundColor: dark ? GColors.dark : GColors.light,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'All Reviews',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(
                    onPressed: ()=> Get.to(()=> const ProductReviewsScreen()),
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
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/overall_rating.dart';
import 'package:GoGoods/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:GoGoods/utils/device/device_utility.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final screenWidth = GDeviceUtils.getScreenWidth(context);

    return Scaffold(
      appBar: GCustomAppBar(
        centerTitle: true,
        showBackgroundColor: false,
        title: Text('Ratings & Reviews',
            style: Theme.of(context).textTheme.headlineSmall),
        leadingIcon: Iconsax.arrow_left_2,
        leadingOnPress: () => Get.back(),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Iconsax.maximize),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              Text(
                'Ratings and Reviews are verified and from people who use the same type of device that you use.',
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: dark ? GColors.grey : GColors.darkerGrey,
                    ),
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              /// --Overall Product Rating
              const GOverallProductRating(),
              const SizedBox(height: GSizes.spaceBtwSections),

              /// --User Views and Ratings
              const GUserReviewCard(),
              const SizedBox(height: GSizes.spaceBtwSections),
              const GUserReviewCard(),
              const SizedBox(height: GSizes.spaceBtwSections),
              const GUserReviewCard(),
              const SizedBox(height: GSizes.spaceBtwSections),
              const GUserReviewCard(),
              const SizedBox(height: GSizes.spaceBtwSections),
              const GUserReviewCard(),
              const SizedBox(height: GSizes.spaceBtwSections),

            ],
          ),
        ),
      ),
    );
  }
}
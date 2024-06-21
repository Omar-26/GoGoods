import 'dart:collection';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'brand_showcase.dart';


class GCategoryTab extends StatelessWidget {
  const GCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              /// --Brands
              GBrandShowCase(
                images: LinkedHashSet.from(
                  [
                    GImages.productImage3,
                    GImages.productImage1,
                    GImages.productImage2,
                  ],
                ),
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              /// --Products You might like Section
              // Products Section Title
              GSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: GSizes.spaceBtwItems),

              // Products list
              GGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) =>
                  const GVerticalProductCard()),
            ],
          ),
        ),
      ],
    );
  }
}

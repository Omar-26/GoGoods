import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'brand_card.dart';

class GFeaturedBrandsSection extends StatelessWidget {
  const GFeaturedBrandsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //! Important Note : we can't use Column here because it will not work with NestedScrollView
    //! as Column will take infinite height and NestedScrollView will not be able to calculate the height
    //! So instead we will use ListView with NeverScrollableScrollPhysics
    return ListView(
      // This allows us to calculate the height of the ListView as it will be the height of its children
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        /// --Search Bar
        const SizedBox(height: GSizes.spaceBtwItems),
        const GSearchBar(
          searchHint: 'Search in Store',
          showBackground: false,
          showBorder: true,
          padding: EdgeInsets.zero,
        ),
        const SizedBox(height: GSizes.spaceBtwSections),

        /// --Featured Brands
        // Featured Section Title
        GSectionHeading(
          title: 'Featured Brands',
          showActionButton: true,
          onPressed: () {},
        ),

        // Brands list
        GGridLayout(
          itemCount: 4,
          mainAxisExtent: 80,
          itemBuilder: (_, index) => const GBrandCard(
            imageUrl: GImages.nikeLogo,
            brandTitle: 'Nike',
            brandSubtitle: '256 Products',
          ),
        ),
      ],
    );
  }
}

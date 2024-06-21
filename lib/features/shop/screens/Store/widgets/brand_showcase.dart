import 'dart:math';

import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/features/shop/screens/Store/widgets/brand_card.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';
import 'dart:collection';

class GBrandShowCase extends StatelessWidget {
  const GBrandShowCase({
    super.key,
    required this.images,
  });

  // Used Linked Hash set to make sure that there is no repeated products
  final LinkedHashSet<String> images;

  Expanded brandTopProductsImagesWidget(String image, context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Expanded(
      child: GCircularContainer(
        height: 100,
        backgroundColor: dark ? Colors.black26 : GColors.light,
        margin: const EdgeInsets.only(right: GSizes.sm),
        padding: const EdgeInsets.all(GSizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    final imagesList = images.toList(); // Convert Set to List
    return GCircularContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      borderColor: dark ? GColors.darkerGrey : GColors.grey,
      padding: const EdgeInsets.all(GSizes.md),
      margin: const EdgeInsets.only(bottom: GSizes.spaceBtwItems),
      child: Column(
        children: [
          const GBrandCard(
            imageUrl: GImages.nikeLogo,
            brandTitle: 'Nike',
            brandSubtitle: '256 Products',
            showBorder: false,
          ),
          const SizedBox(height: GSizes.spaceBtwItems/2),

          // Brand showcase of some products

          for (int i = 0; i < imagesList.length; i += 3) ...[
            Row(
              children: imagesList
                  .getRange(i, min(i + 3, imagesList.length)) // Instead of Sublist as sublist is not in LinkedHashSet
                  .map((image) => brandTopProductsImagesWidget(image, context))
                  .toList(),
            ),
            if (i + 3 < imagesList.length) const SizedBox(height: GSizes.spaceBtwItems),
          ]
        ],
      ),
    );
  }
}
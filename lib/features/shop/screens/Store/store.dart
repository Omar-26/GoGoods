import 'package:GoGoods/common/widgets/appbar/appbar.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:GoGoods/common/widgets/images/circular_border_image.dart';
import 'package:GoGoods/common/widgets/layouts/grid_layout.dart';
import 'package:GoGoods/common/widgets/products/cart/counter_icon.dart';
import 'package:GoGoods/common/widgets/texts/brand_title_text_with_icon.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/enums.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: GCustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium!),
        actions: [
          GCounterIcon(
            icon: Iconsax.shopping_bag,
            backgroundColor: dark ? GColors.white : GColors.black,
            textColor: dark ? GColors.black : GColors.white,
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, isInnerBoxScroll) => [
          // First Scrollable Area
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 440,
            backgroundColor: dark ? GColors.black : GColors.white,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(GSizes.defaultSpace),

              //! Important Note : we can't use Column here because it will not work with NestedScrollView
              //! as Column will take infinite height and NestedScrollView will not be able to calculate the height
              //! So instead we will use ListView with NeverScrollableScrollPhysics
              /// --Brands Section
              child: ListView(
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
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {},
                      child: GCircularContainer(
                        showBorder: true,
                        borderColor: dark ? GColors.darkerGrey : GColors.grey,
                        backgroundColor: Colors.transparent,
                        padding: const EdgeInsets.all(GSizes.sm),
                        child: Row(
                          children: [
                            // Brand Icon
                            const Flexible(
                              child: GCircularBorderImage(
                                imageUrl: GImages.nikeLogo,
                                padding: EdgeInsets.all(GSizes.sm),
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(width: GSizes.spaceBtwItems / 4),

                            // Brand Name
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const GBrandTitleTextWithIcon(
                                    title: 'Nike',
                                    brandTextSize: TextSizes.large,
                                  ),
                                  const SizedBox(
                                      height: GSizes.spaceBtwItems / 8),
                                  Text('256 Products',
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.labelMedium)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        body: Container(),
      ),
    );
  }
}

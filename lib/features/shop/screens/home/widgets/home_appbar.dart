import 'package:GoGoods/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:GoGoods/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_categories.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/counter_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class GHomeAppBar extends StatelessWidget {
  const GHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return SliverAppBar(
      pinned: true,
      floating: true,
      collapsedHeight: 62,
      expandedHeight: 320,
      backgroundColor: dark ? GColors.black : GColors.white,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double top = constraints.biggest.height;
          return Stack(
            children: [
              /// --Background of the AppBar
              FlexibleSpaceBar(
                background: GPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      // Greeting and Name + Cart Icon
                      const SizedBox(height: GSizes.xs),
                      GCustomAppBar(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Greeting
                            Text(GTexts.homeAppbarTitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .apply(color: GColors.grey)),
                            // Name
                            Text(GTexts.homeAppbarSubTitle,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .apply(color: GColors.white))
                          ],
                        ),
                        actions: [
                          GCounterIcon(
                            icon: Iconsax.shopping_bag,
                            iconColor: GColors.white,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),

                      // Search Bar
                      const GSearchBar(
                        searchHint: 'Search in Store',
                        showBorder: false,
                      ),
                      const SizedBox(height: GSizes.spaceBtwSections / 1.2),

                      // Categories Section
                      const Padding(
                        padding: EdgeInsets.only(left: GSizes.defaultSpace),
                        child: Column(
                          children: [
                            // Categories Section Title
                            GSectionHeading(
                              title: 'Popular Categories',
                              showActionButton: false,
                              textColor: GColors.white,
                            ),
                            SizedBox(height: GSizes.spaceBtwItems),

                            // List of Categories
                            GHomeCategories(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /// --Pinned Search Bar and it's Closing Animation
              Positioned(
                top: top - 53.0,
                bottom: 6.0,
                left: 0.0,
                right: 0.0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 50),
                  opacity: top <= 100.0 ? 1.0 : 0.0,
                  child: Container(
                    height: 58,
                    color: top <= 80.0 ? GColors.dark : Colors.transparent,

                    //TODO Should be Replaced by the generic one
                    // Search Bar
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Container(
                        padding: const EdgeInsets.only(left: GSizes.md),
                        decoration: BoxDecoration(
                          color: dark ? Colors.black26 : GColors.light,
                          border: Border.all(
                              color: dark ? GColors.dark : GColors.light),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.search_normal,
                              color: dark ? GColors.white : GColors.darkerGrey,
                            ),
                            const SizedBox(width: GSizes.spaceBtwItems),
                            Text(
                              'Search in Store',
                              style:
                                  Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark
                                            ? GColors.white
                                            : GColors.darkerGrey,
                                      ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

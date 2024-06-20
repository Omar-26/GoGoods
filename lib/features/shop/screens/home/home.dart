import 'package:GoGoods/common/widgets/layouts/grid_layout.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_categories.dart';
import 'package:GoGoods/features/shop/screens/home/widgets/home_promo_slider.dart';
import 'package:GoGoods/utils/constants/colors.dart';
import 'package:GoGoods/utils/constants/image_strings.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:GoGoods/utils/helpers/helper_functions.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/cards/product_card_vertical.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Blue Primary Header
            const GPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// App Bar
                  GHomeAppBar(),
                  SizedBox(height: GSizes.spaceBtwSections),

                  /// Search Bar
                  GSearchBar(
                    searchHint: 'Search in Store',
                  ),
                  SizedBox(height: GSizes.spaceBtwSections),

                  /// Categories Section
                  Padding(
                    padding: EdgeInsets.only(left: GSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Categories Section Title
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
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

            /// Body
            Padding(
              padding: const EdgeInsets.fromLTRB(GSizes.defaultSpace,
                  GSizes.md, GSizes.defaultSpace, GSizes.defaultSpace),
              child: Column(
                children: [
                  // Carousel Banners Slider
                  const CarouselPromoSlider(banners: [
                    GImages.promoBanner1,
                    GImages.promoBanner2,
                    GImages.promoBanner3,
                  ]),
                  const SizedBox(height: GSizes.spaceBtwSections),

                  /// Popular Products Section
                  // Products Title
                  SectionHeading(
                    title: 'Popular Products',
                    textColor: GHelperFunctions.isDarkMode(context)
                        ? GColors.white
                        : GColors.black,
                    showActionButton: true,
                    buttonText: 'View All',
                    onPressed: () {},
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  // Products Grid
                  GGridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) =>
                      const GVerticalProductCard()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
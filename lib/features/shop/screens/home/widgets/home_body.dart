import 'package:GoGoods/common/widgets/layouts/grid_layout.dart';
import 'package:GoGoods/common/widgets/products/cards/product_card_vertical.dart';
import 'package:GoGoods/common/widgets/texts/section_heading.dart';
import 'package:GoGoods/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import 'home_promo_slider.dart';


class GHomeBody extends StatelessWidget {
  const GHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(GSizes.defaultSpace,
                GSizes.sm, GSizes.defaultSpace, GSizes.defaultSpace),
            child: Column(
              children: [
                ///  --Banners Slider
                const CarouselPromoSlider(banners: [
                  GImages.promoBanner1,
                  GImages.promoBanner2,
                  GImages.promoBanner3,
                ]),
                const SizedBox(height: GSizes.spaceBtwSections),

                /// --Popular Products Section
                // Products Title
                GSectionHeading(
                  title: 'Popular Products',
                  buttonText: 'View All',
                  showActionButton: true,
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
    );
  }
}
